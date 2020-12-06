import pymysql
import nugu



def initDB():
    db = pymysql.connect(
        host='localhost',
        port=3306,
        user='my_user',
        passwd='1q2w3e4R!',
        db='brainEngraver',
        charset='utf8'
    )
    return db

def getDB(query, parameter):
    db = initDB()
    cursor = db.cursor()
    sql = query
    cursor.execute(sql, parameter)
    rows = cursor.fetchall()
    db.commit()
    db.close()
    if len(rows) == 0:
        return 0
    else:
        return rows

def setDB(query, parameter):
    db = initDB()
    cursor = db.cursor()
    cursor.execute(query, parameter)
    db.commit()
    db.close()

def postTest():
    db = initDB()
    cursor = db.cursor()

    sql = "INSERT INTO User(id, userId, name, password) VALUES (6, 'young', 'young', '1234');"
    cursor.execute(sql)

    db.commit()
    db.close()

    return '200'

def getTest():
    db = initDB()
    cursor = db.cursor()
    sql = 'SELECT * FROM `User`'
    cursor.execute(sql, ())
    rows = cursor.fetchall()
    db.commit()
    db.close()
    if len(rows) == 0:
        return 0
    else:
        return str(rows)

def getStudy():
    sql = 'SELECT * FROM Study'
    return getDB(sql, ())

def getAnswer(question_id):
    sql = 'SELECT meaning FROM Word WHERE id = %s'
    return getDB(sql, (question_id))

def getWordSet(data):
    sql = 'SELECT name, meaning FROM Word WHERE wordSetId = %s AND subWordSetId = %s'
    return getDB(sql, (data['wordSet'], data['subWordSet']))

def getExamWords(wordSetId, subWordSetId, userId):
    # Chapter 1 일때,
    if subWordSetId == 1:
        # 15개 다
        sql = 'SELECT word, meaning, id FROM Word WHERE wordSetId = %s AND subWordSetId = %s'
        return getDB(sql, (wordSetId, subWordSetId))
    # 아닌경우,
    else:
        # 10개가 올테고,
        sql = 'SELECT word, meaning, id FROM Word WHERE wordSetId = %s AND subWordSetId = %s'
        examList = getDB(sql, (wordSetId, subWordSetId))
        # forgettingRate에서 5개 골라야 함.
        sql = 'SELECT word, meaning, id FROM forgettingRate_'+userId+' WHERE NOT (wordSetId = %s AND subWordSetId = %s) ORDER BY forgettingRate ASC LIMIT 5'
        newList = getDB(sql, (wordSetId, subWordSetId))
        examList += newList

        print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
        print(examList)
        print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")

        # sql = 'SELECT word, meaning, id FROM ForgettingRate ORDER BY forgettingRate ASC LIMIT 15'
        # return getDB(sql, ())
        # 시험 볼 단어 return 해줌...
        return examList

#def getFExamWords(wordSetId, subWordSetId):
    #동희씨 이곳 sql문도 바꿔주셔야합니다!!!!!!!!!!!!!!!!!!
#    sql = 'SELECT word, meaning FROM ForgettingRate WHERE wordSetId = %s AND subWordSetId = %s'
#    return getDB(sql, (wordSetId, subWordSetId))
    #동희씨 이곳 sql문도 바꿔주셔야합니다!!!!!!!!!!!!!!!!!!


def setExamWords(word, meaning, wordId):
    sql = 'INSERT INTO Exam (word, meaning, wordId) VALUES (%s, %s, %s)'
    setDB(sql, (word, meaning, wordId))

def setFExamWords(word, meaning):
    sql = 'INSERT INTO FExam (wordId, word, meaning) VALUES (%s, %s, %s)'
    setDB(sql, (word, meaning))

def deleteExam():
    sql = 'DELETE FROM Exam'
    setDB(sql, ())

def deleteFExam():
    sql = 'DELETE FROM FExam'
    setDB(sql, ())

def getExam():
    sql = 'SELECT * from Exam'
    return getDB(sql, ())

def getFExam():
    sql = 'SELECT * from FExam'
    return getDB(sql, ())

def getStudiedWords():
    sql = 'SELECT * FROM Word WHERE studied = 1'
    #studied = int(1)
    #print(type(studied))
    return getDB(sql, ())

def getLowForgettingRate():
    sql = 'SELECT word, meaning FROM ForgettingRate WHERE studied = 1 ORDER BY forgettingRate ASC LIMIT 10'
    return getDB(sql, ())

# def getStudyWord(wordSetId, subWordSetId):
#     sql = 'SELECT word, meaning FROM Word WHERE wordSetId = %s AND subWordSetId = %s'
#     return getDB(sql, (wordSetId, subWordSetId))

def getForgettingRateWords(userId):
    # sql = 'CREATE TABLE `forgettingRate_' + userId + '`(`id` INT NOT NULL)'
    # sql = 'SELECT word, meaning FROM ForgettingRate'
    #^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    sql = 'SELECT word, meaning FROM forgettingRate_' +userId
    # ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    return getDB(sql,())

def getForgettingRateWords_All():
    sql = 'SELECT word, meaning FROM ForgettingRate'
    return getDB(sql,())

def insert_ForgettingRate(word, meaning, wordId, wordSetId, subWordSetId, userId):
    print("&&&&&&&&&&&&&&&")
    print(wordId)
    print(type(wordId))
    print(userId)
    print("&&&&&&&&&&&&&&&")
    sql2 = 'SELECT word FROM forgettingRate_' +userId+ ' WHERE wordId = %s'
    alreadyExist = getDB(sql2, (wordId))

    if not alreadyExist:
        defaultTestTime  = '2000-10-10 10:10:10'
        sql = 'INSERT INTO forgettingRate_'+userId+'' \
              ' (wordId, forgettingRate, forgettingStage, testTime, wordSetId, subWordSetId, studied, word, meaning)' \
              ' VALUES (%s, 0, 1, %s, %s, %s, 1, %s, %s)'
        setDB(sql, (wordId, defaultTestTime, wordSetId, subWordSetId, word, meaning))

#def getForgettingRate(wordId):
#    sql = 'SELECT * from forgettingRate where wordId = %s'
#    return getDB(sql, (wordId))
def setFExamWords(word, meaning):
    sql = 'INSERT INTO FExam (word, meaning) VALUES (%s, %s)'
    setDB(sql, (word, meaning))

def deleteStudy():
    sql = 'DELETE FROM Study'
    setDB(sql, ())

def getStudyWords(wordSetId, subWordSetId):
    sql = 'SELECT word, meaning, id FROM Word WHERE wordSetId = %s AND subWordSetId = %s'
    return getDB(sql, (wordSetId, subWordSetId))

def setStudyWords(word, meaning, wordId):
    sql = 'INSERT INTO Study (word, meaning, wordId) VALUES (%s, %s, %s)'
    setDB(sql, (word, meaning, wordId))

def getUser(userId):
    # sql = 'SELECT userId from User WHERE userId = %s'
    sql = 'SELECT userId FROM brainEngraver.User WHERE userId = %s'
    return getDB(sql, (userId))

def setUser(userId):
    sql = 'INSERT INTO User (userId) VALUE %s'
    print("here we done?")
    setDB(sql, (userId))

def setToken(userId, token):
    sql = 'INSERT INTO User (userId, token) VALUES (%s, %s)'
    setDB(sql, (userId, token))

def createTable(userId):
    print("before create")
    sql = 'CREATE TABLE `forgettingRate_' + userId + '`(`id` INT NOT NULL AUTO_INCREMENT,`wordId` INT NOT NULL, `forgettingRate` FLOAT NOT NULL, `forgettingStage` INT NOT NULL, `testTime` DATETIME NOT NULL, `wordSetId` INT, `subWordSetId` INT, `studied` INT, `word` VARCHAR(45) NOT NULL, `meaning` VARCHAR(45) NOT NULL, PRIMARY KEY(`id`))'
    # sql = 'CREATE TABLE `forgettingRate_' + userId +'`(`wordId` INT NOT NULL)'
    print(sql)
    db = initDB()
    cursor = db.cursor()
    cursor.execute(sql)
    db.commit()
    db.close()
    print("this is working")

    # print("after create")

if __name__ == '__main__':
    pass