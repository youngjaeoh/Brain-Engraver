import pymysql
from pprint import pprint

def getDB():
    db = pymysql.connect(
        host='localhost',
        port=3306,
        user='my_user',
        passwd='1q2w3e4R!',
        db='brainEngraver',
        charset='utf8'
    )
    return db

def postTest():
    db = getDB()
    cursor = db.cursor()

    sql = "INSERT INTO User(id, userId, name, password) VALUES (6, 'kiMin', 'kiMin', '1234');"
    cursor.execute(sql)

    db.commit()
    db.close()

    return '200'

def getTest():
    db = getDB()
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

def getWord(id):
    db = getDB()
    cursor = db.cursor()
    sql = 'SELECT word, meaning FROM Word WHERE wordSetId = 1 AND subWordSetId = 1 AND id = ' + str(id)
    cursor.execute(sql, ())
    rows = cursor.fetchall()
    db.commit()
    db.close()
    if len(rows) == 0:
        return 0
    else:
        return rows

def getAnswer(question_id):
    db = getDB()
    cursor = db.cursor()
    sql = 'SELECT meaning FROM Word WHERE id = ' + str(question_id)
    cursor.execute(sql, ())
    rows = cursor.fetchall()
    db.commit()
    db.close()
    if len(rows) == 0:
        return 0
    else:
        return rows[0][0]

def getWordSet(data):
    db = getDB()
    cursor = db.cursor()
    # SELECT * FROM brainEngraver.Word WHERE wordSetId = 1 AND subWordSetId = 1;
    sql = 'SELECT name, meaning FROM Word WHERE wordSetId = ' + str(data['wordSet']) + ' AND subWordSetId = ' + str(data['subWordSet'])
    cursor.execute(sql, ())
    rows = cursor.fetchall()
    db.commit()
    db.close()
    if len(rows) == 0:
        return 0
    else:
        return rows

if __name__ == '__main__':
    # p(getCalendar('개강'))
    # p(getCalendar('중간고사'))
    # p(getCalendarIncludeSemester('중간고사','1학기'))
    # p(getNoticeIncludeLink(1))
    # p(getNotice())
    pass