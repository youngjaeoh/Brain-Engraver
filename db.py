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

    sql = "INSERT INTO User(id, userId, name, password) VALUES (6, 'kiMin', 'kiMin', '1234');"
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

def getExamWords(wordSetId, subWordSetId):
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
        sql = 'SELECT word, meaning, id FROM ForgettingRate ORDER BY forgettingRate ASC LIMIT 5'
        newList = getDB(sql, ())
        examList += newList

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

def getForgettinRateWords(wordSetId, subWordSetId):
    sql = 'SELECT word, meaning FROM ForgettingRate WHERE wordSetId = %s AND subWordSetId = %s'
    return getDB(sql,(wordSetId, subWordSetId))

def insert_ForgettingRate(word, meaning, wordId, wordSetId, subWordSetId):
    sql2 = "SELECT word FROM ForgettingRate WHERE wordId = %s"
    alreadyExist = getDB(sql2, (wordId))

    if not alreadyExist:
        defaultTestTime  = '2000-10-10 10:10:10'
        sql = 'INSERT INTO ForgettingRate ' \
              '(wordId, forgettingRate, forgettingStage, testTime, wordSetId, subWordSetId, studied, word, meaning)' \
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

if __name__ == '__main__':
    # p(getCalendar('개강'))
    # p(getCalendar('중간고사'))
    # p(getCalendarIncludeSemester('중간고사','1학기'))
    # p(getNoticeIncludeLink(1))
    # p(getNotice())
    pass