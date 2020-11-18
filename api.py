#-*-coding:utf-8-*-
from flask import Flask, request, json
import db
import json
import nugu
import time

sleepTime = 1
readCount = 1
commonResponse = {
    'version': '2.0',
    'resultCode': 'OK',
    'output': {}
}

app = Flask(__name__)

@app.route('/', methods=['GET'])
def getUser():
    return db.getTest()

@app.route('/post', methods=['POST'])
def saveUser():
    return db.postTest()

@app.route('/studyStart', methods=['POST'])
def studyStart():
    wordSet = 'TOEIC'
    subWordSet = 'Chapter 1'

    response = commonResponse
    response['output']['wordSet'] = wordSet
    response['output']['subWordSet'] = subWordSet

    return json.dumps(response)

@app.route('/examStart', methods=['POST'])
def examStart():
    wordSet = 'TOEIC'
    subWordSet = 'Chapter 1'

    response = commonResponse
    response['output']['testWordSet'] = wordSet
    response['output']['testSubWordSet'] = subWordSet

    return json.dumps(response)

@app.route('/word_1', methods=['POST'])
def word_1():
    word = db.getWord(1)

    response = commonResponse
    response['output']['word'] = word[0][0]
    response['output']['meaning'] = word[0][1]

    return json.dumps(response)

@app.route('/word_2', methods=['POST'])
def word_2():
    word = db.getWord(2)

    response = commonResponse
    response['output']['word'] = word[0][0]
    response['output']['meaning'] = word[0][1]

    return json.dumps(response)

@app.route('/word_3', methods=['POST'])
def word_3():
    word = db.getWord(3)

    response = commonResponse
    response['output']['word'] = word[0][0]
    response['output']['meaning'] = word[0][1]

    return json.dumps(response)

@app.route('/question_1', methods=['POST'])
def question_1():
    word = db.getWord(1)

    response = commonResponse
    response['output']['question'] = word[0][0]

    return json.dumps(response)


@app.route('/answer_1', methods=['POST'])
def answer_1():
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    myAnswer = data['action']['parameters']['answer']['value']

    question_id = 1
    answer = db.getAnswer(question_id)
    if answer == myAnswer:
        correctness = '정답입니다.'
    else:
        correctness = '오답입니다.'

    response = commonResponse
    response['output']['correctness'] = correctness

    return json.dumps(response)


@app.route('/question_2', methods=['POST'])
def question_2():
    word = db.getWord(2)

    response = commonResponse
    response['output']['question'] = word[0][0]

    return json.dumps(response)

@app.route('/answer_2', methods=['POST'])
def answer_1():
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    myAnswer = data['action']['parameters']['answer']['value']

    question_id = 2
    answer = db.getAnswer(question_id)
    if answer == myAnswer:
        correctness = '정답입니다.'
    else:
        correctness = '오답입니다.'

    response = commonResponse
    response['output']['correctness'] = correctness

    return json.dumps(response)

@app.route('/question_3', methods=['POST'])
def question_3():
    word = db.getWord(3)

    response = commonResponse
    response['output']['question'] = word[0][0]

    return json.dumps(response)

@app.route('/answer_3', methods=['POST'])
def answer_1():
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    myAnswer = data['action']['parameters']['answer']['value']

    question_id = 3
    answer = db.getAnswer(question_id)
    if answer == myAnswer:
        correctness = '정답입니다.'
    else:
        correctness = '오답입니다.'

    response = commonResponse
    response['output']['correctness'] = correctness

    return json.dumps(response)

# subWordSet, wordSet
@app.route('/learning', methods=['POST'])
def stage1():
    # data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    data = {
        'wordSet': 1,
        'subWordSet': 1
    }
    wordList = db.getWordSet(data) # (('green',), ('yellow',), ('red',), ('blue',), ('purple',))
    # print(wordList)

    response = commonResponse
    response['output']['learning'] = []

    for word in wordList:
        # read word 3 times
        for i in range(0, readCount):
            # response['output']['learning'].append(nugu.readWord(word[0], word[1]))
            response['output']['word'] = word[0]
            response['output']['meaning'] = word[1]
            # time.sleep(sleepTime)
            print(response)
    return json.dumps(response)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5500, debug=True)