import math
import datetime
import db

def update_testTime(answer):
    new_testTime = datetime.datetime.now()
    new_testTime_str  = new_testTime.strftime('%Y-%m-%d %H:%M:%S')
    sql = 'UPDATE ForgettingRate SET testTime = %s WHERE meaning = %s'###
    db.setDB(sql, (new_testTime_str, answer))

def fx(testTime, forgettingStage):
  
    K = 1.48
    C = 1.25

    now = datetime.datetime.now()

    diff = now - testTime
    days, seconds = diff.days, diff.seconds
    hours = days*24 + seconds/3600
    t = hours  
    x_move = 12*(forgettingStage -1)

    if t <= x_move:
        y = 100000 # 발산 # 기억 잘 남
    else:
        log = math.log10(t - x_move)
        y = (100*K)/(C*log + K)
  
    return y

def cal_forgettingRate(forgettingStage, testTime):
    if (forgettingStage >= 5): # 5단계는 memoryRate 항상 20000(장기기억)
        new_forgettingRate = 200000
    else: # 1-4단계
        if (forgettingStage == 1):
            n = 1
        elif (forgettingStage == 2):
            n = 1.5
        elif (forgettingStage == 3):
            n = 2.0
        elif (forgettingStage == 4):
            n = 2.5

        #n = 1 + 0.5*(forgettingStage -1) 
        new_forgettingRate = fx(testTime, forgettingStage)*n
        if new_forgettingRate > 100000: # 10000이상은 다 10000처리. forgettingRate 0-10000까지..(중복 최소화)
            new_forgettingRate = 100000 

    return new_forgettingRate

def update_forgettingRate(answer):
    sql_f = 'SELECT forgettingStage FROM ForgettingRate WHERE meaning = %s'
    sql_t = 'SELECT testTime FROM ForgettingRate WHERE meaning = %s'
    forgettingStage = db.getDB(sql_f, (answer))
    testTime = db.getDB(sql_t, (answer))

    defaultTestTime  = '2000-10-10 10:10:10'

    if testTime[0][0] == defaultTestTime: ## testTime == NULL 일 때 
    #study만 하고 exam 거치지 않은 경우.(오늘 처음 study한 단어들) -> forgettingRate=0해서 exam에 뽑히게
        new_forgettingRate = 0
    #elif forgettingStage[0][0] == 0: ## study 안 하고 바로 test(forgettigStage=0)
    #    new_forgettingRate = 0
    #    update_SubWordSet_studied(subWordSet)
    #    update_Word_studied(wordSetId, subWordSetId)
    else:
        new_forgettingRate = cal_forgettingRate(forgettingStage[0][0], testTime[0][0])
    
    #sql2 = """UPDATE Word SET forgettingRate = %f WHERE id = %d"""
    sql2 = "UPDATE ForgettingRate SET forgettingRate = %s WHERE meaning = %s"

    #print("@@@@@@@@@@@@@@@@")
    #print(new_forgettingRate, answer, id, type(new_forgettingRate), type(answer), type(id), type(sql2))
    #print("@@@@@@@@@@@@@@@@@")

    # print("################################")
    # print(new_forgettingRate)
    # print("################################")

    if new_forgettingRate > 200000:
        new_foregettingRate = 200000

    db.setDB(sql2, (new_forgettingRate, answer))


def update_forgettingStage(answer, correct):
    if correct == 1:
        sql1 = 'SELECT forgettingStage FROM ForgettingRate WHERE meaning = %s'###
        forgettingStage = db.getDB(sql1, (answer))
        forgettingStage_up = forgettingStage[0][0] + 1

        sql2 = 'UPDATE ForgettingRate SET forgettingStage = %s WHERE meaning = %s'###
        db.setDB(sql2, (forgettingStage_up, answer))
        # forgettingStage +1
        # correct == 0 이면 forgettingStage 유지
    elif correct == 0:
        pass

def update_SubWordSet_studied(wordSetId, subWordSetId):
    # sql = 'UPDATE SubWordSet SET studied = 1 WHERE name = %s'
    sql = 'UPDATE Word SET studied = 1 WHERE wordSetId = %s AND subWordSetId = %s'
    db.setDB(sql, (wordSetId, subWordSetId))

"""
def update_Word_studied(wordSetId, subWordSetId):
    #sql = 'UPDATE Word SET studied = 1 WHERE wordSetId = %d AND subWordSetId = %d'
    sql = 'UPDATE Word SET studied = 1 WHERE wordSetId = %s AND subWordSetId = %s' ## %s 
    db.setDB(sql, (wordSetId, subWordSetId))

def update_ForgettingRate_studied(wordSetId, subWordSetId):###
    sql = 'UPDATE ForgettingRate SET studied = 1 WHERE wordSetId = %s AND subWordSetId = %s'
    db.setDB(sql, (wordSetId, subWordSetId))
"""

def init_forgettingStage(wordSetId, subWordSetId):
    sql2 = 'SELECT forgettingStage FROM ForgettingRate WHERE wordSetId = %s AND subWordSetId = %s'
    forgettingStage = db.getDB(sql2, (wordSetId, subWordSetId))
    if(forgettingStage[0][0] == 0):
        sql = 'UPDATE forgettingStage SET forgettingStage = 1 WHERE wordSetId = %s AND subWordSetId = %s'
        db.setDB(sql, (wordSetId, subWordSetId))

#test stage 끝난 후 exam 비우기 전! testTime 먼저 업데이트