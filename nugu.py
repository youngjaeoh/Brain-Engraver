from flask import request, json
import db
import forgettingrate

commonResponse = {
    'version': '2.0',
    'resultCode': 'OK',
    'output': {}
}

exceptionResponse = {
    'version': '2.0',
    'resultCode': 'studyEndException',
    'output': {}
}

wordset = ""
subwordset = ""
wordsetid = 0
subwordsetid = 0

def setWordSet(name, index):
    global wordset
    wordset = name
    global wordsetid
    wordsetid = index


def setSubWordSet(name, index):
    global subwordset
    subwordset = name
    global subwordsetid
    subwordsetid = index

def question(index):
    response = commonResponse
    # print(db.getExam())
    response['output']['question'] = db.getExam()[index-1][1]

    return json.dumps(response)

def study(index):
    response = commonResponse

    words = db.getStudy()

    response['output']['word'] = words[index-1][1]
    response['output']['meaning'] = words[index-1][2]

    return json.dumps(response)

def finishStudy(index):
    response = exceptionResponse

    words = db.getStudy()

    response['output']['word'] = words[index-1][1]
    response['output']['meaning'] = words[index-1][2]

    return json.dumps(response)

def forgetting_question(index):
    response = commonResponse
    response['output']['Fquestion'] = db.getFExam()[index-1][1]

    return json.dumps(response)

def answer(index):
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    # print("@@@@@@@@@@@")
    # print(data)
    # print("@@@@@@@@@@@@")
    myAnswer = data['action']['parameters']['answer']['value']
    print("myanswer is!!!!!!!!", myAnswer)
    answer = db.getExam()[index-1][2]
    print("this is the answer from database!!!!!", answer)

    if answer == myAnswer:
        correctness = '정답입니다.'
        correct = 1
    else:
        correctness = '오답입니다.'
        correct = 0

    forgettingrate.update_forgettingStage(answer, correct)#######
    forgettingrate.update_testTime(answer)############

    response = commonResponse
    response['output']['correctness'] = correctness

    return json.dumps(response)

def forgetting_answer(index):
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    # print("@@@@@@@@@@@")
    # print(data)
    # print("@@@@@@@@@@@@")
    myAnswer = data['action']['parameters']['Fanswer']['value']
    # print("myFFFanswer is!!!!!!!!", myAnswer)
    #print(myAnswer)
    answer = db.getFExam()[index-1][2]

    if answer == myAnswer:
        Fcorrectness = '정답입니다.'
        correct = 1
    else:
        Fcorrectness = '오답입니다.'
        correct = 0

    forgettingrate.update_forgettingStage(answer, correct)######
    forgettingrate.update_testTime(answer)######

    response = commonResponse
    response['output']['Fcorrectness'] = Fcorrectness

    return json.dumps(response)