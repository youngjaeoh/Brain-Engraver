#-*-coding:utf-8-*-
from flask import Flask, request, json
import db
import nugu
import forgettingrate


readCount = 1

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

application = app = Flask(__name__)

@app.route('/', methods=['GET'])
def getUser():
    return db.getTest()

@app.route('/post', methods=['POST'])
def saveUser():
    return db.postTest()

@app.route('/studyStart', methods=['POST'])
def studyStart():
    wordSet = nugu.wordset
    subWordSet = nugu.subwordset
    wordSetId = nugu.wordsetid
    subWordSetId = nugu.subwordsetid

    # Study table 에 공부할 단어 저장
    db.deleteStudy()
    words = db.getStudyWords(wordSetId, subWordSetId)
    for word in words:
        db.setStudyWords(word[0], word[1], word[2])

    # Word table에 studied를 1로 update
    forgettingrate.update_SubWordSet_studied(wordSetId, subWordSetId)

    # 공부할 단어들 뽑기
    study_words = db.getStudy()

    # 공부할 단어들 forgettingRate table에 넣기
    for word in study_words: # study 하면 forgettingRate db에 추가
        db.insert_ForgettingRate(word[1], word[2], word[3], wordSetId, subWordSetId) # study 안 하고 시험 볼 수는 없는 구조

    # forgettingStage 0인 단어들 1로 업데이트
    # 이거 이제 없어도 됨
    forgettingrate.init_forgettingStage(wordSetId, subWordSetId)

    response = commonResponse
    response['output']['wordSet'] = wordSet
    response['output']['subWordSet'] = subWordSet

    return json.dumps(response)

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@app.route('/chooseChapter', methods=['POST'])
def chooseChapter():
    response = commonResponse
    return json.dumps(response)


@app.route('/chooseWordSet', methods=['POST'])
def chooseWordSet():
    response = commonResponse
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    myChosenWordset = data['action']['parameters']['wordset']['value']

    if myChosenWordset == "토익":
        response['output']['chooseWordSet'] = 'TOEIC'
        index = 1
        nugu.setWordSet("TOEIC", index)
    elif myChosenWordset == "토플":
        response['output']['chooseWordSet'] = 'TOEFL'
        index = 2
        nugu.setWordSet("TOEFL", index)
    else:
        response['output']['chooseWordSet'] = 'GRE'
        index = 3
        nugu.setWordSet("GRE", index)

    return json.dumps(response)

@app.route('/chooseSubWordSet', methods=['POST'])
def chooseSubWordSet():
    response = commonResponse
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    myChosenWordset = data['action']['parameters']['subwordset']['value']

    if myChosenWordset == "챕터 일":
        response['output']['chooseSubWordSet'] = 'Chapter 1'
        index = 1
        nugu.setSubWordSet("Chapter 1", index)
    elif myChosenWordset == "챕터 이":
        response['output']['chooseSubWordSet'] = 'Chapter 2'
        index = 2
        nugu.setSubWordSet("Chapter 2", index)
    else:
        response['output']['chooseSubWordSet'] = 'Chapter 3'
        index = 3
        nugu.setSubWordSet("Chapter 3", index)

    return json.dumps(response)





#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@app.route('/examStart', methods=['POST'])
def examStart():
    wordSet = nugu.wordset
    subWordSet = nugu.subwordset
    wordSetId = nugu.wordsetid
    subWordSetId = nugu.subwordsetid

    # exam table flush
    db.deleteExam()

    
    studied_words = db.getForgettingRateWords()

    ## 여기서 업데이트를 이것만 하면 안되지 전부 다 해야지
    for word in studied_words:#
        forgettingrate.update_forgettingRate(word[1]) # meaning 넘겨줌

    #words = db.getLowForgettingRate()    

    """
    # ForgettingRate db에 있는 단어 전부 다 forgettingrate 업데이트
    forgetting_words = db.getForgettingRateWords_All()

    for word in forgetting_words:
        forgettingrate.update_forgettingRate(word[1])
    
    ## getExamWords 바로 전에 forgettingrate 업데이트
    """

    # exam table에 공부할 단어 등록
    words = db.getExamWords(wordSetId, subWordSetId)
    
    # print("=============================")
    # print(words)
    # print("=============================")
    
    for word in words:
        db.setExamWords(word[0], word[1], word[2])

    response = commonResponse
    response['output']['testWordSet'] = wordSet
    response['output']['testSubWordSet'] = subWordSet

    # print("@@@@@@@@@@@@@@")
    # print(response)
    # print("@@@@@@@@@@@@@@\n")

    return json.dumps(response)

@app.route('/word_1', methods=['POST'])
def word_1():
    return nugu.study(1)

@app.route('/word_2', methods=['POST'])
def word_2():
    return nugu.study(2)

@app.route('/word_3', methods=['POST'])
def word_3():
    return nugu.study(3)

@app.route('/word_4', methods=['POST'])
def word_4():
    return nugu.study(4)

@app.route('/word_5', methods=['POST'])
def word_5():
    return nugu.study(5)

@app.route('/word_6', methods=['POST'])
def word_6():
    return nugu.study(6)

@app.route('/word_7', methods=['POST'])
def word_7():
    return nugu.study(7)

@app.route('/word_8', methods=['POST'])
def word_8():
    return nugu.study(8)

@app.route('/word_9', methods=['POST'])
def word_9():
    return nugu.study(9)

@app.route('/word_10', methods=['POST'])
def word_10():
    # chapter 1인지 확인,
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    subWordSet = data['action']['parameters']['subWordSet']['value']

    # chapter 1이면 commonResponse
    if '1' in subWordSet:
        return nugu.study(10)
    # 아니면, exceptionResponse
    else:
        return nugu.finishStudy(10)

@app.route('/word_11', methods=['POST'])
def word_11():
    return nugu.study(11)

@app.route('/word_12', methods=['POST'])
def word_12():
    return nugu.study(12)

@app.route('/word_13', methods=['POST'])
def word_13():
    return nugu.study(13)

@app.route('/word_14', methods=['POST'])
def word_14():
    return nugu.study(14)

@app.route('/word_15', methods=['POST'])
def word_15():
    return nugu.study(15)

@app.route('/question_1', methods=['POST'])
def question_1():
    return nugu.question(1)

@app.route('/answer_1', methods=['POST'])
def answer_1():
    return nugu.answer(1)

@app.route('/question_2', methods=['POST'])
def question_2():
    return nugu.question(2)

@app.route('/answer_2', methods=['POST'])
def answer_2():
    return nugu.answer(2)

@app.route('/question_3', methods=['POST'])
def question_3():
    return nugu.question(3)

@app.route('/answer_3', methods=['POST'])
def answer_3():
    return nugu.answer(3)

@app.route('/question_4', methods=['POST'])
def question_4():
    return nugu.question(4)

@app.route('/answer_4', methods=['POST'])
def answer_4():
    return nugu.answer(4)

@app.route('/question_5', methods=['POST'])
def question_5():
    return nugu.question(5)

@app.route('/answer_5', methods=['POST'])
def answer_5():
    return nugu.answer(5)

@app.route('/question_6', methods=['POST'])
def question_6():
    return nugu.question(6)

@app.route('/answer_6', methods=['POST'])
def answer_6():
    return nugu.answer(6)

@app.route('/question_7', methods=['POST'])
def question_7():
    return nugu.question(7)

@app.route('/answer_7', methods=['POST'])
def answer_7():
    return nugu.answer(7)

@app.route('/question_8', methods=['POST'])
def question_8():
    return nugu.question(8)

@app.route('/answer_8', methods=['POST'])
def answer_8():
    return nugu.answer(8)

@app.route('/question_9', methods=['POST'])
def question_9():
    return nugu.question(9)

@app.route('/answer_9', methods=['POST'])
def answer_9():
    return nugu.answer(9)

@app.route('/question_10', methods=['POST'])
def question_10():
    return nugu.question(10)

@app.route('/answer_10', methods=['POST'])
def answer_10():
    return nugu.answer(10)

@app.route('/question_11', methods=['POST'])
def question_11():
    return nugu.question(11)

@app.route('/answer_11', methods=['POST'])
def answer_11():
    return nugu.answer(11)

@app.route('/question_12', methods=['POST'])
def question_12():
    return nugu.question(12)

@app.route('/answer_12', methods=['POST'])
def answer_12():
    return nugu.answer(12)

@app.route('/question_13', methods=['POST'])
def question_13():
    return nugu.question(13)

@app.route('/answer_13', methods=['POST'])
def answer_13():
    return nugu.answer(13)

@app.route('/question_14', methods=['POST'])
def question_14():
    return nugu.question(14)

@app.route('/answer_14', methods=['POST'])
def answer_14():
    return nugu.answer(14)

@app.route('/question_15', methods=['POST'])
def question_15():
    return nugu.question(15)

@app.route('/answer_15', methods=['POST'])
def answer_15():
    return nugu.answer(15)

@app.route('/postWordSet', methods=['POST'])
def postWordSet():
    #data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    return {}







@app.route('/forgetting', methods=['POST'])
def f_ExamStart():
    wordSet = nugu.wordset
    subWordSet = nugu.subwordset
    
    if wordSet == "TOEIC":
        wordSetId = 1
    elif wordSet == "TOEFL":
        wordSetId = 2
    else:
        wordSetId = 3

    if subWordSet == "Chapter 1":
        subWordSetId = 1
    elif subWordSet == "Chapter 2":
        subWordSetId = 2
    else:
        subWordSetId = 3

    db.deleteFExam()

    # Fexam table에 공부할 단어 등록
    #studied_words = db.getStudiedWords()
    studied_words = db.getForgettinRateWords()

    for word in studied_words:#
        forgettingrate.update_forgettingRate(word[1]) # meaning 넘겨줌

    words = db.getLowForgettingRate()    
    
    # print("=============================")
    # print(words)
    # print("=============================")
    
    for word in words:
        db.setFExamWords(word[0], word[1])

    response = commonResponse #### 여깁니다!!!!
    response['output']['testWordSet'] = wordSet
    response['output']['testSubWordSet'] = subWordSet

    return json.dumps(response)

    #return 200



@app.route('/forgetting_question_1', methods=['POST'])
def forgetting_question_1():
    return nugu.forgetting_question(1)

@app.route('/forgetting_answer_1', methods=['POST'])
def forgetting_answer_1():
    return nugu.forgetting_answer(1)

@app.route('/forgetting_question_2', methods=['POST'])
def forgetting_question_2():
    return nugu.forgetting_question(2)

@app.route('/forgetting_answer_2', methods=['POST'])
def forgetting_answer_2():
    return nugu.forgetting_answer(2)

@app.route('/forgetting_question_3', methods=['POST'])
def forgetting_question_3():
    return nugu.forgetting_question(3)

@app.route('/forgetting_answer_3', methods=['POST'])
def forgetting_answer_3():
    return nugu.forgetting_answer(3)

@app.route('/forgetting_question_4', methods=['POST'])
def forgetting_question_4():
    return nugu.forgetting_question(4)

@app.route('/forgetting_answer_4', methods=['POST'])
def forgetting_answer_4():
    return nugu.forgetting_answer(4)

@app.route('/forgetting_question_5', methods=['POST'])
def forgetting_question_5():
    return nugu.forgetting_question(5)

@app.route('/forgetting_answer_5', methods=['POST'])
def forgetting_answer_5():
    return nugu.forgetting_answer(5)

@app.route('/forgetting_question_6', methods=['POST'])
def forgetting_question_6():
    return nugu.forgetting_question(6)

@app.route('/forgetting_answer_6', methods=['POST'])
def forgetting_answer_6():
    return nugu.forgetting_answer(6)

@app.route('/forgetting_question_7', methods=['POST'])
def forgetting_question_7():
    return nugu.forgetting_question(7)

@app.route('/forgetting_answer_7', methods=['POST'])
def forgetting_answer_7():
    return nugu.forgetting_answer(7)

@app.route('/forgetting_question_8', methods=['POST'])
def forgetting_question_8():
    return nugu.forgetting_question(8)

@app.route('/forgetting_answer_8', methods=['POST'])
def forgetting_answer_8():
    return nugu.forgetting_answer(8)

@app.route('/forgetting_question_9', methods=['POST'])
def forgetting_question_9():
    return nugu.forgetting_question(9)

@app.route('/forgetting_answer_9', methods=['POST'])
def forgetting_answer_9():
    return nugu.forgetting_answer(9)

@app.route('/forgetting_question_10', methods=['POST'])
def forgetting_question_10():
    return nugu.forgetting_question(10)

@app.route('/forgetting_answer_10', methods=['POST'])
def forgetting_answer_10():
    return nugu.forgetting_answer(10)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5500, debug=True)
