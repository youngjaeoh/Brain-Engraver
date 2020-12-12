# Brain-Engraver: 

NUGU AI speaker helps you to memorize vocabularies Based on Forgetting Curve. \
HYU AI/SE project

## Conclusion (데모 비디오, PPT, documentation)
- Our Demo of this project : https://youtu.be/q4spgq5WGos
- Our Presentation PPT : http://naver.me/5jWIcbmp
- Our documentation of this project: https://www.overleaf.com/read/dpxgnnkhzkct

## 서비스 개요
+ 망각 곡선 기반 AI 영어 단어 암기 서비스
+ 기존 영어 단어 암기 방법들은 대부분 텍스트 기반 암기에 의존해왔다. 단어를 읽고 쓰는 방식으로 암기하면 많은 단어를 암기 하지도 못 하고, 한 번 외운 단어는 장기 기억이 아닌 단기 기억에만 존재해 금방 망각하게 된다. Brain-Engraver 는 '에빙하우스의 망각 곡선' 이론에 기반해 사용자의 망각률을 추적하고, 사용자가 망각했을만한 단어를 추출해 NUGU 스피커를 통해 시험을 본다. 스피커를 통한 단어 암기 방식은 발음과 뜻을 모두 암기할 수 있어 기존 텍스트 기반의 암기 방식보다 효율적이며, 망각 곡선에 기반해 단어를 여러 번 복습하기 때문에 단어가 장기 기억에 저장될 수 있게 도와준다. 
![스크린샷 2020-12-03 오후 9 58 52](https://user-images.githubusercontent.com/69071182/101021220-fc672100-35b2-11eb-99c6-75ab7ace1898.png)

## 서비스 소개
+ "뇌새김 정하자"
    + Brain-Engraver 는 크게 두 단계로 구성된다. 1. 학습 단계, 2. 시험 단계. 사용자는 두 단계를 거치기 전에 '정하자' 단계를 통해 어떤 단어 세트를 학습할 것인지 선택할 수 있다. 제공되는 단어 세트는 TOEIC, TOEFL, GRE 총 세가지 세트이며, 각 단어 세트는 chapter 3까지 구성되어 있다.
+ "뇌새김 공부하자"
    + 1.학습 단계. 학습 단계에서 사용자는 "뇌새김 정하자" 단계에서 선택한 단어 세트를 학습하게 된다. NUGU 스피커는 단어와 뜻을 세번씩 반복해서 불러주며 사용자에게 단어를 학습시킨다.
+ "뇌새김 시험보자"
    + 2.시험 단계. 시험 단계에서 사용자는 "뇌새김 정하자" 단계에서 선택한 단어 세트를 시험보게 된다. 이 때 시험보는 단어는 사용자가 가장 최근에 "뇌새김 공부하자" 단계에서 공부한 단어 전부와, 이전에 공부했던 단어들 중에서 망각률에 기반해 가장 망각이 많이 일어난 단어 다섯개를 추가로 추출한다. NUGU 스피커를 통해 단어 시험을 보게 되는데, 스피커가 영어 단어를 읽으면 사용자는 한국어 뜻을 대답한다. 이 때 스피커는 사용자가 정답을 말하면 '정답입니다.', 오답을 말하면 '오답입니다.' 라고 말하게 된다. 사용자의 정답 여부와 시험 간격에 따라 망각률이 업데이트 된다.

## 서비스 사용법
- "뇌새김 정하자"
![usecase_new1](https://user-images.githubusercontent.com/69071182/101985622-983c0f80-3ccc-11eb-9c5f-8e88f27751c6.png)

- "뇌새김 공부하자"
![usecase_new2](https://user-images.githubusercontent.com/69071182/101985624-9a9e6980-3ccc-11eb-9864-c92df745760a.png)

- "뇌새김 시험보자"
![스크린샷 2020-12-12 오후 10 40 04](https://user-images.githubusercontent.com/69071182/101985382-0aabf000-3ccb-11eb-8bbe-ca66c21c620f.png)

## Contributors
+ Young Jae OH, 오영재
+ Dong Hee LEE, 이동희
+ Antoine  Maffeis
+ Sébastien  Yung

## Proposal
It  goes  without  saying  that  traditional  text-based memorizing   technique   is   not   effective.   The   problem   behind memorizing  words  is  that  memorized  words  are  often  stored in  the  short-term  memory  of  our  brain,  not  in  the  long-term memory  section.  In  practice,  combining  learning  activity  with a  forgetting  curve  has  been  proved  to  substantially  improve  the effectiveness  of  studying.  In  this  paper,  we  make  the  first  study to  enhance  human  memorization  via  the  forgetting  curve  using the  NUGU  AI  speaker.  The  user  goes  through  two  stages,  which are  the  learning  and  test  stage.  In  the  learning  stage,  the  user repetitively  learns  the  vocabulary  of  choice  and  the  NUGU  AIspeaker  helps  this  process  by  reading  the  word.

## Related software and research

### Memo  Review
![스크린샷 2020-12-03 오후 9 56 28](https://user-images.githubusercontent.com/69071182/101020902-806cd900-35b2-11eb-8cbc-99f25e63aa01.png)  

- Feature: Helps the user to memorize vocabularies with various learning methods such as "listen-and-write" and "word  card". It also shows vocabularies on human forgetting curb.
- Difference: This application  does  not  support  the test  stage  like  Brain-Engraver.  We  compute  the "likely-to-be-forgotten-words"   based   on   test   results  with  the  human  forgetting  curve  algorithm.
- Review:  There  are  only  six  reviews,  and  most  of them  said  it  is  a  waste  of  money  because  of  its slow  loading.
- URL: https://apps.apple.com/kr/app/%EB%A9%94%EB%AA%A8%EB%A6%AC%EB%B7%B0-%EC%98%81%EC%96%B4-%EB%8B%A8%EC%96%B4-%EC%88%99%EC%96%B4-%EC%96%B4%ED%9C%98-%EC%82%AC%EC%A0%84-%EC%95%94%EA%B8%B0-%EB%A7%9D%EA%B0%81%EA%B3%A1%EC%84%A0/id1407142605

### Memorize.ai:  Learn  Lazily
![스크린샷 2020-12-03 오후 9 58 17](https://user-images.githubusercontent.com/69071182/101021209-fa04c700-35b2-11eb-8fcf-aea53307d3ac.png)

- Feature:  It  uses  artificial  intelligence (they  do  not give  specific  detail  about  what  algorithm  or  what technique  they  used  for  this  application).  It  supports  a  feature  called  "Spaced  Repetition".  This application  supports  LaTeX,  and  code  editors.
- Difference:  It  is  not  specified  in  memorizing  vocabularies  like  our  Brain-Engraver.
- Review:  5  out  of  6  reviews  said  it  was  good,  but  1 of  the  review  claimed  that  it  crashes  consistently.
- URL: https://memorize.ai/

### Research   Paper: A   Memorizing   Model   of   Effective English  Study  by  Kyung  Lan  Kim
- It  goes  on  to  detail  about  the  fact  that  memorizing  a  vocabulary  based  on  Ebbinghaus  human forgetting  curve  theory  is  better  than  just  hard-memorizing  the  words.
- Difference:  The  paper  only  describes  the  effectiveness  of  memorization  based  on  the  human forgetting curve. It does not provide any software-related  method.
- URL: http://www.riss.kr/search/detail/DetailView.do?p_mat_type=be54d9b8bc7cdb09&control_no=6af046b2297666f0ffe0bdc3ef48d419

## Datasets
![스크린샷 2020-12-03 오후 9 58 27](https://user-images.githubusercontent.com/69071182/101021215-fb35f400-35b2-11eb-9058-99ef29df7d1e.png) 

- It uses three word sets, TOEIC, TOEFL and GRE and each word set consists of three chapters. Each word set was made by referring to the books on the market.

## Development environment

Model | Processor | RAM | OS |
--- | --- | --- | --- |
MacBook Pro | Intel Core i9, 2.4GHz octa-core | 32GB 2667 MHz DDR4 | macOS Catalina(10.15.7)
MacBook Air | Intel Core i5, 1.6GHz dual-core | 4GB 1600MHz DDR4 | macOS  Catalina(10.15.7)
Dell  XPS  15  9570 | Intel  Core  i7-8750h,  2.20GHz | 16GB  2208MHz  DDR4 | Windows 10(10.0.18363 Numero 18363)
HP  Spectre  x360  Convertible | Intel  Core  i7-8550U,  1.80GHz | 16GB  2208MHz  DDR4 | Windows 10(10.0.18363 Numero 18363


## Overall architecture
![스크린샷 2020-12-03 오후 9 58 39](https://user-images.githubusercontent.com/69071182/101021216-fbce8a80-35b2-11eb-89b7-3e7531ed6afb.png)

Brain Engraver consists of four modules. The first module is NUGU AI Speaker and Android Studio. This module is the front end of our application, which reacts with the user. The second module is the NUGU platform. It gets the voice input from the user and processes using its own ASR, NLU, NLG and TTS engine. Within the NUGU platform, there is "Play Builder" which enables us to add user utterance model and custom actions for it. Third module is HEROKU web sever, which is a PaaS(Platform as a Service). We deployed our application to HEROKU as a dynos, and uploaded the MySQL database along with it. For the database, since HEROKU does not support MySQL, we installed CelarDB MySQL Ignite to the HEROKU to process our original MySQL database. For the last module, we used AWS EC2(Linux Ubuntu Server 20.04). This module was used to test the software features and contructions of MySQL database. This AWS server was connected to the NUGU Platform directly for development purpose.


## Methodology
### Forgetting-Curve Algorithm

![스크린샷 2020-12-03 오후 9 58 52](https://user-images.githubusercontent.com/69071182/101021220-fc672100-35b2-11eb-99c6-75ab7ace1898.png)
![스크린샷 2020-12-10 오전 12 18 08](https://user-images.githubusercontent.com/69071182/101649114-dee7fa80-3a7d-11eb-8746-b08d95b32e13.png)

Each user has a forgettingrate table, and the words that passed the learning stage are inserted in the forgettingrate table. The words that are first inserted in the forgettingrate table will have default test time, and the forgettingrate and forgettingstage will be initialized to 0 and 1. During the test stage, if the user answers the question incorrectly, the forgettingstage will not change, and if the answer is correct, the forgettingstage will go up. The graph calculating the forgettingrate for each forgettingstage is different, and the higher the forgettingstage, the slower the forgettingrate decreases. If the same word is answered correctly by user four times in the test stage, it will go to stage 5, long-term memory, and will not be tested again. The forgettingrate is calculated by the difference between the current time and the most recent test time the word is tested. A large gap between the current time and testtime is calculated as a low forgettingrate and it is likely to be extracted during the test stage. Conversely, if the gap between the current time and testtime is not large, the forgettingrate is calculated high, and it is not likely to be extracted during the test stage.

- examStart
  
```  
   def examStart():
      wordSet = nugu.wordset
      subWordSet = nugu.subwordset
      wordSetId = nugu.wordsetid
      subWordSetId = nugu.subwordsetid
    
      db.deleteExam()
    
      studied_words = db.getForgettingRateWords()
      
      # update forgettingrate of each word
      for word in studied_words:
          forgettingrate.update_forgettingRate(word[1])
        
      words = db.getExamWords(wordSetId, subWordSetId)
    
      for word in words:
          db.setExamWords(word[0], word[1], word[2])

      response = commonResponse
      response['output']['testWordSet'] = wordSet
      response['output']['testSubWordSet'] = subWordSet
    
      return json.dumps(response)
```
In the examstart, it updates the forgettingrate by calling the update_forgettingRate() from the forgettingrate.py. This means that before the exam start, it extracts words that have low forgettingrate based on current time.

- update_forgettingRate

```
    def update_forgettingRate(answer):
      sql_f = 'SELECT forgettingStage FROM ForgettingRate WHERE meaning = %s'
      sql_t = 'SELECT testTime FROM ForgettingRate WHERE meaning = %s'
      forgettingStage = db.getDB(sql_f, (answer))
      testTime = db.getDB(sql_t, (answer))

      defaultTestTime  = '2000-10-10 10:10:10'

      if testTime[0][0] == defaultTestTime: 
          new_forgettingRate = 0
      else:
          new_forgettingRate = cal_forgettingRate(forgettingStage[0][0], testTime[0][0])
          
       sql2 = "UPDATE ForgettingRate SET forgettingRate = %s WHERE meaning = %s"
      
      if new_forgettingRate > 200000:
          new_foregettingRate = 100000

      db.setDB(sql2, (new_forgettingRate, answer))
```
In the update_forgettingRate, it updates the forgettingrate from forgettingrate table with newly calculated forgettingrate. If a word has only been studied and has not been tested, it updates the forgettingrate with 0. New forgettingrate is calculated in cal_forgettingRate function according to forgettingstage and testtime of each word. 

- fx, cal_forgettingrate
![스크린샷 2020-12-03 오후 9 59 08](https://user-images.githubusercontent.com/69071182/101021224-fcffb780-35b2-11eb-9b64-17be0013f9a1.png)

```
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
          y = 100000 # short time gap
      else:
          log = math.log10(t - x_move)
          y = (100*K)/(C*log + K)
  
      return y

    
    def cal_forgettingRate(forgettingStage, testTime):
      if (forgettingStage >= 5): # stage 5 : long-term memory
          new_forgettingRate = 200000
      else: 
          if (forgettingStage == 1):
              n = 1
          elif (forgettingStage == 2):
              n = 1.5
          elif (forgettingStage == 3):
              n = 2.0
          elif (forgettingStage == 4):
              n = 2.5

      return new_forgettingRate
```
In the fx function, it calculates gap between time now and the most recent testtime of each word. After converting the gap into hour units, the forgettingrate is calculated according to the graph of each forgettingstage. The equation of graph is from Ebbinghaus' Forgetting-Curve theory. In the cal_forgettingRate, the weight of the forgettingrate varies with each stage. The higher the step, the higher the forgettingrate, so that if the word is correctly answered by user several times, the forgettingrate will be calculated higher. 

- update_forgettingStage

```
    def update_forgettingStage(answer, correct):
      if correct == 1:
          sql1 = 'SELECT forgettingStage FROM ForgettingRate WHERE meaning = %s'
          forgettingStage = db.getDB(sql1, (answer))
          forgettingStage_up = forgettingStage[0][0] + 1

          sql2 = 'UPDATE ForgettingRate SET forgettingStage = %s WHERE meaning = %s'
          db.setDB(sql2, (forgettingStage_up, answer))
          
      elif correct == 0:
          pass
```
In the update_forgettingStage, it updates the forgettingstage according to the user's answer. If the user's answer is correct, the forgettingstage goes up. If the user's answer is wrong, the forgettingstage does not change.


## Use cases

### Mobile application
![스크린샷 2020-12-03 오후 9 59 18](https://user-images.githubusercontent.com/69071182/101021226-fd984e00-35b2-11eb-8281-64ac8057b00b.png)
![스크린샷 2020-12-10 오전 12 19 46](https://user-images.githubusercontent.com/69071182/101649180-f3c48e00-3a7d-11eb-9917-ecb29fea3abd.png)
![스크린샷 2020-12-12 오후 9 57 13](https://user-images.githubusercontent.com/69071182/101984486-109ed280-3cc5-11eb-81f7-335192beb71a.png)
![스크린샷 2020-12-12 오후 9 57 36](https://user-images.githubusercontent.com/69071182/101984487-12689600-3cc5-11eb-99da-400fc5e07f61.png)


- The user should first use the mobile application to sign up or sign in to get the token.
- The token is sent to the server, creating the token's own ForgettingRate table.
- When user launches the Brain Engraver application on the mobile phone, the login page will be shown. If the user does not have an account, user can create a new account using the sign-up button.
- In the NUGU Play "뇌새김" within the NUGU application, there is a sample voice interaction sentences for the user to try.
- When the user speaks "아리야, 뇌새김 시작해줘", the NUGU AI speaker says it is launched, and waits for the user to choose a certain function.

- The user can always check the word and its' meaning from the mobile application.
- To check the wordset, click the menu above, click  Word Set, click word set such as TOEIC and click sub word set such as Chapter1.

### NUGU AI Speaker

#### Overall Process
![스크린샷 2020-12-10 오전 12 20 03](https://user-images.githubusercontent.com/69071182/101649277-12c32000-3a7e-11eb-9bf9-2c859c35958d.png)

- When the user starts Brain-Engraver, the user can choose action among three options, "뇌새김 정하자", "뇌새김 공부하자", "뇌새김 시험보자".
- After the user chooses word set and chapter by "뇌새김 정하자", the user can move on to the learning stage and test stage.
- It is recommended that the user go to the test stage after the learning stage.


#### Choosing Wordset
![스크린샷 2020-12-10 오전 12 20 14](https://user-images.githubusercontent.com/69071182/101649357-24a4c300-3a7e-11eb-961c-d5a174693a13.png)

- When the user speaks "정하자", the NUGU AI Speaker starts the application and asks the user which chapter to choose. The user can choose the wordset "TOEIC" by speaking "토익", "토플" for "TOEFL", and "지얼이" for "GRE".
- If the user does not choose the correct chapter, the application terminates

#### Choosing Chapter
- After choosing the wordset to learn, NUGU AI Speaker automatically asks you to choose a chapter(Subwordset). The user can choose the chapter he/she wants by speaking "챕터 일", "챕터 이" and so on.
- If the user does not choose the correct chapter, the application terminates.
- When the word set and sub word set has been choosen by the user, the NUGU AI Speaker speaks "TOEIC(TOEFL or GRE) 의 Chapter 1(2 or 3)을 학습하기로 설정 완료했습니다!"

#### Learning Stage
![스크린샷 2020-12-10 오전 12 20 22](https://user-images.githubusercontent.com/69071182/101649369-27071d00-3a7e-11eb-9517-11c06c977b8f.png)

- After choosing the wordset and the chapter(Subwordset), the user starts the "study" function by simply speaking "공부하자".
- In the "study" function, which is the learning stage mentioned above in the specifications, NUGU AI speaker reads the word 3 times.
- In order to learn the next word, the user should say "다음".
- The "study" function terminates when the chosen chapter is finished.
- If the user wishes to interrupt during the process, the user can just say "아리아, 그만"
- The forgettingstage for each word in the selected chapter is initialized to 1.

#### Test Stage
![스크린샷 2020-12-12 오후 10 40 04](https://user-images.githubusercontent.com/69071182/101985382-0aabf000-3ccb-11eb-8bbe-ca66c21c620f.png)

- After finishing the learning stage, the user can start the test stage, "exam" function by "시험보자"
- Before starting "exam" function, forgettingrate is updated according to the time when the "exam" function is called.
- In the "exam" function, the user goes through total 15 words, which comprises 10 words that the user have just learned in the learning stage, and 5 words that is likely to be forgotten.
- 5 words are chosen by the Ebbinghaus's Forgetting Curve theory.
- The forgettingstage for each word is updated depending on the user's answer.
- The testtime for each word is updated with the time when the speaker received the user's answer.

#### Interrupt/terminate function
![스크린샷 2020-12-10 오전 12 20 40](https://user-images.githubusercontent.com/69071182/101649400-2ec6c180-3a7e-11eb-8a22-fd8194768dfc.png)

- In order to finish the application during the process of "learning stage" or "test stage", user should say "아리아, 뇌새김 그만" or "아리아, 뇌새김 닫아줘"
- When user says "아리아 , 그만", the application terminates without saving its progress.
- When NUGU speaker is in the session waiting for the user to speak, user can just say "그만" to terminate the process.

## User Guide
### Installation
- The mobile application can be found in 'Google Play Store'. our application will be recommended when the user searches for certain keywords, such as 'English', 'learning', 'vocabulary', 'memorize'. Simple click button will install it to the user's mobile phone. 
- For the speaker, Brain Engraver is already installed in NUGU application(both Android and iOS). It can be found in the "Education / Kids" catetory under "NUGU PLAY".

## Evaluation & Analysis
It is meaningful in that it memorizes words by communicating with speaker, not by memorizing text-based words. Its strength is that it extracts words that users may have forgotten over time based on the forgettingrate. Each user has a different forgettingrate table to extract words according to the user's forgetting pattern, and it uses forgettingstage to distinguish between long-term memory and short-term memory.

Forgetting-stage | 6 hours later | 12 hours later | 24 hours later | 48 hours later |
--- | --- | --- | --- | --- |
1 | 60.342 | 52.316 | 46.174 | 41.323 |
2 | 10000 | 10000 | 78.474 | 64.81 |
3 | 10000 | 10000 | 10000 | 92.348 |
4 | 10000 | 10000 | 10000 | 130.789 |

<p>
  <em>Forgetting-rate table</em>
</p>
<br>

![스크린샷 2020-12-03 오후 10 00 08](https://user-images.githubusercontent.com/69071182/101021235-ff621180-35b2-11eb-92f3-5be083e85466.png)

According to the forgettingrate algorithm defined above, the forgetting rate has a value from 0 to 10000. The reason for not defining the forgetting rate as 0-100% is to avoid same values as much as possible. In addition, if the test is re-tested within a short period of time, the forgetting rate can be very high, so if the forgettingrate is calculated higher than 10000, the forgettingrate is updated with 10000. In the case of long-term memory, the forgettingrate remains unchanged and continues to remain at 20000, which is always higher than the forgettingrate of the words in stage 1 to 4. According to the table above, the forgettingrate becomes lower over time, but at a higher stage, the forgettingrate remains high over time, and then decreases slowly. It appears that the higher the stage, the higher the forgettingrate. After the actual test phase, because the user's response time varies in seconds, the same forgettingrate is rarely found. As a result, it can extract five words that have lower forgettingrate. In the above ForgettingRate database image, the testtime is different in seconds, and the forgettingrate is stored differently for each word. 

### Error
- The problem behind NUGU playbuilder is that it can only map the specific word to the intent. This means that even though the intent's name is different(same with entity's name and action's name), the invocation word or the word that NUGU spekaer learned cannot be the same. On top of this, Intent created by us was prohibited to use in multiple actions unless its a one -continuously-starting branch action. Originally, we wanted to make a "Exam Function" that only tested the user with the words that the user just learnt, and a "Forgetting Rate Exam Function" to test only the words that the user is likely to forgotten. So naturally, since NUGU playbuilder's restrictions forced us to merge the two "Exam Function" and "Forgetting Rate Function" together. To illustrate a light on the matter, we created two actions for "Exam Function" and "Forgetting Rate Exam Function". Since only one entity type can be mapped to one action, so we had to create two different named entity types named "Answer" and "Forgetting Rate Answer". These two entity types were mapped to each intents, and those intents consists of the meaning of the words. When we ran the program and tested, NUGU playbuilder did not know what request to send, so it did not work. By this reason, we had no choice to merge these two "Exam Function" and "Forgetting Rate Function" together.

- There were also a problem even when we merged these two actions. The problem was that when user started the exam action for the first time, there would be only 10 questions that the user have learned and 5 blank words that was supposed to be "likely-to-be-forgotten words". Consequently, error occured in the first test. So, in order to solve this problem, we had no choice but to increment 5 more words to the TOEIC's chapter 1. By doing this, on the first exam, NUGU playbuilder gave the test with 15 words that had been learned by the user, and on the second exam, NUGU playbuilder gave 10 just-learned words and 5 likely-to-be-forgotten words.

- NUGU Platform  server  error: From  time  to  time,  NUGU  server  misacts  and sends  strange  server  requests.  There  are  serveral types  of  nugu server  errors  that  we  found.  The first  one  is  that  even  if  we  change  the  backend server  to  another  one  and  save  the  changes,  the NUGU  platform  sometimes  send  the  request  to the previous backend server. Moreover, since our program  is  based  on  numerous  branch  actions, NUGU  platform  sometimes  gets  confused  and sends   previous   action’s   request   to   the   current action.   When   this   kind   of   error   happens,   we figured out that waiting is the answer. We believe that  it  has  something  to  do  with  ACKs  comming late.

- The problem with the forgettingrate algorithm is that there is no exact formula, graph, for the rate of human oblivion.Although it followed the most famous theory in the forgetting curve, Ebbinghaus' forgetting curve theory, this theory also does not provide an exact formula for the forgetting curve. It is hard to say that it is the exact rate of oblivion because the exact formula was given only when the forgetting stage was 1, so the other formulas were made by itself to make it look similar to the forgetting curve graph of the Ebbinghaus' on the 2-4 stages. Due to these formulas that are not exactly accurate, the forgetting rate rarely goes down to zero. In addition, due to the nature of the log graph, the forgetting rate is calculated very high if the test is retaken within a short time. So words with a forgetting rate of over 100000 are all treated as 100000, which can lead to duplication among words. For the same reason, if a user takes several tests within a short period of time, the forgetting stage is not calculated effectively. Therefore, it is recommended that users take the test once a day. Finally, in the forgetting curve theory of the Ebbinghaus, the forgetting stage was divided according to the number of repetitions based on the spaced repetition, but it had separate learning and test steps, so it is not possible to simply divide the forgetting stage according to the number of times the word was repeated. This may lead to extract inappropriate words during the test stage if they have learned several times, and to treat them as long-term memories. Therefore, it cannot help but use the user's correctness in the test stage instead of spaced repetition in the Ebbinghaus' forgetting curve.

  + When the user's first test is not TOEIC's chapter 1
    + Error will not occur in the "learning stage"
    + Error will occur in the 11th question of the "test stage"
    + When the error occurs, the application will terminate itself
    + In order to avoid this error, study chapter 1 and take the chapter 1's exam. Afterwords, the error does not occur again.
            
  + When the user says things that Brain Engraver cannot understand
    + When user speaks repeatedly the things Brain Engraver cannot understand, the application gets terminated.

  + When the user does not speak
    + When the user does not speak during the listening session of the NUGU AI speaker, the application gets terminated.
    
  + NUGU Platform server error
    + From time to time, NUGU server misacts and sends strange server requests. There are serveral types of nugu server errors that we found. The first one is that even if we change the backend server to another one and save the changes, the NUGU platform sometimes send the request to the previous backend server. Moreover, since our program is based on numerous branch actions, NUGU platform sometimes gets confused and sends previous action's request to the current action. When this kind of error happens, we figured out that waiting is the answer. We believe that it has something to do with ACKs comming late.

  + When the user repeats test stage several times within a short time. 
    + Due to the nature of the log graph, the forgettingrate can be calculated very high if the test is retaken within a short time and words can be mistreated as if they were in long-term memory.

## Conclusion
- Our Demo of this project : https://youtu.be/wHTkzgaj9t8
- Our Presentation PPT : http://naver.me/5jWIcbmp
- Our documentation of this project: https://www.overleaf.com/read/dpxgnnkhzkct
