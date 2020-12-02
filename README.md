# Brain-Engraver: 
NUGU AI speaker helps you to memorize vocabularies Based on Forgetting Curve. \
This project is for the AI / SE of HYU.

## Contributors
+ Young Jae OH
+ Dong Hee LEE
+ Antoine  Maffeis
+ Sébastien  Yung

## Proposal
It  goes  without  saying  that  traditional  text-based memorizing   technique   is   not   effective.   The   problem   behind memorizing  words  is  that  memorized  words  are  often  stored in  the  short-term  memory  of  our  brain,  not  in  the  long-term memory  section.  In  practice,  combining  learning  activity  with a  forgetting  curve  has  been  proved  to  substantially  improve  the effectiveness  of  studying.  In  this  paper,  we  make  the  first  study to  enhance  human  memorization  via  the  forgetting  curve  using the  NUGU  AI  speaker.  The  user  goes  through  two  stages,  which are  the  learning  and  test  stage.  In  the  learning  stage,  the  user repetitively  learns  the  vocabulary  of  choice  and  the  NUGU  AIspeaker  helps  this  process  by  reading  the  word.

## Related software and research

### Memo  Review
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100877210-cad75280-34eb-11eb-894f-d9a0cb4f1a1d.PNG", width="200">
<img src="https://user-images.githubusercontent.com/69071182/100877246-d62a7e00-34eb-11eb-9f87-363c783dc5cf.PNG", width="200">
</p>
<br>  

- Feature: Helps the user to memorize vocabularies with various learning methods such as "listen-and-write" and "word  card". It also shows vocabularies on human forgetting curb.
- Difference: This application  does  not  support  the test  stage  like  Brain-Engraver.  We  compute  the "likely-to-be-forgotten-words"   based   on   test   results  with  the  human  forgetting  curve  algorithm.
- Review:  There  are  only  six  reviews,  and  most  of them  said  it  is  a  waste  of  money  because  of  its slow  loading.
- URL: https://apps.apple.com/kr/app/%EB%A9%94%EB%AA%A8%EB%A6%AC%EB%B7%B0-%EC%98%81%EC%96%B4-%EB%8B%A8%EC%96%B4-%EC%88%99%EC%96%B4-%EC%96%B4%ED%9C%98-%EC%82%AC%EC%A0%84-%EC%95%94%EA%B8%B0-%EB%A7%9D%EA%B0%81%EA%B3%A1%EC%84%A0/id1407142605

### Memorize.ai:  Learn  Lazily
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100877252-d7f44180-34eb-11eb-8ac8-4246628f6bb2.PNG", width="200">
<img src="https://user-images.githubusercontent.com/69071182/100877290-e5113080-34eb-11eb-831c-070e2782b309.PNG", width="200">
</p>
<br>

- Feature:  It  uses  artificial  intelligence (they  do  not give  specific  detail  about  what  algorithm  or  what technique  they  used  for  this  application).  It  supports  a  feature  called  "Spaced  Repetition".  This application  supports  LaTeX,  and  code  editors.
- Difference:  It  is  not  specified  in  memorizing  vocabularies  like  our  Brain-Engraver.
- Review:  5  out  of  6  reviews  said  it  was  good,  but  1 of  the  review  claimed  that  it  crashes  consistently.
- URL: https://memorize.ai/

### Research   Paper: A   Memorizing   Model   of   Effective English  Study  by  Kyung  Lan  Kim
- It  goes  on  to  detail  about  the  fact  that  memorizing  a  vocabulary  based  on  Ebbinghaus  human forgetting  curve  theory  is  better  than  just  hard-memorizing  the  words.
- Difference:  The  paper  only  describes  the  effectiveness  of  memorization  based  on  the  human forgetting curve. It does not provide any software-related  method.
- URL: http://www.riss.kr/search/detail/DetailView.do?p_mat_type=be54d9b8bc7cdb09&control_no=6af046b2297666f0ffe0bdc3ef48d419

## Datasets
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100879947-76ce6d00-34ef-11eb-9484-518406e983d0.png", width="350">
<img src="https://user-images.githubusercontent.com/69071182/100879952-78983080-34ef-11eb-9234-81b2b533b8fd.png", width="400">
</p>
<br>  

- It uses three word sets, TOEIC, TOEFL and GRE and each word set consists of three chapters. Each word set was made by referring to the books on the market.

## Development environment

Model | Processor | RAM | OS |
--- | --- | --- | --- |
MacBook Pro | Intel Core i9, 2.4GHz octa-core | 32GB 2667 MHz DDR4 | macOS Catalina(10.15.7)
MacBook Air | Intel Core i5, 1.6GHz dual-core | 4GB 1600MHz DDR4 | macOS  Catalina(10.15.7)
Dell  XPS  15  9570 | Intel  Core  i7-8750h,  2.20GHz | 16GB  2208MHz  DDR4 | Windows 10(10.0.18363 Numero 18363)
HP  Spectre  x360  Convertible | Intel  Core  i7-8550U,  1.80GHz | 16GB  2208MHz  DDR4 | Windows 10(10.0.18363 Numero 18363


## Overall architecture
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100880666-59e66980-34f0-11eb-8e47-bf1fe0226e05.jpeg", width="400">
</p>
<br>

Brain Engraver consists of four modules. The first module is NUGU AI Speaker and Android Studio. This module is the front end of our application, which reacts with the user. The second module is the NUGU platform. It gets the voice input from the user and processes using its own ASR, NLU, NLG and TTS engine. Within the NUGU platform, there is "Play Builder" which enables us to add user utterance model and custom actions for it. Third module is HEROKU web sever, which is a PaaS(Platform as a Service). We deployed our application to HEROKU as a dynos, and uploaded the MySQL database along with it. For the database, since HEROKU does not support MySQL, we installed CelarDB MySQL Ignite to the HEROKU to process our original MySQL database. For the last module, we used AWS EC2(Linux Ubuntu Server 20.04). This module was used to test the software features and contructions of MySQL database. This AWS server was connected to the NUGU Platform directly for development purpose.


## Methodology
### Forgetting-Curve Algorithm
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100883148-586a7080-34f3-11eb-8b69-f058b2267e4d.png", width="450">
</p>
<p align="center">
  <em>Forgetting-Curve graph</em>
</p>
<br>
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100883140-56081680-34f3-11eb-8545-736b2e3394ce.png", width="950">
</p>
<p align="center">
  <em>Database</em>
</p>
<br>

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
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100885424-f9f2c180-34f5-11eb-9ee3-4f1ea754023d.png", width="200">
</p>
<p align="center">
  <em>Forgetting-rate equation in forgetting-stage 1</em>
</p>
<br>

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
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100886930-bd27ca00-34f7-11eb-867f-7d72843b955b.jpeg", width="200">
</p>
<p align="center">
  <em>NUGU play 뇌새김</em>
</p>
<br>
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100886406-23601d00-34f7-11eb-8cd5-7e844677778f.png", width="170">
<img src="https://user-images.githubusercontent.com/69071182/100886419-26f3a400-34f7-11eb-821d-830e1f573374.png", width="170">
<img src="https://user-images.githubusercontent.com/69071182/100886424-2955fe00-34f7-11eb-8aea-5ca6ff750a6a.png", width="170">
<img src="https://user-images.githubusercontent.com/69071182/100886429-2b1fc180-34f7-11eb-8be9-d3d5012fdfb1.png", width="170">
<img src="https://user-images.githubusercontent.com/69071182/100886431-2c50ee80-34f7-11eb-85db-43d9a40605f4.png", width="170">
</p>
<p align="center">
  <em>Mobile application</em>
</p>
<br>

- The user should first use the mobile application to sign up or sign in to get the token.
- The token is sent to the server, creating the token's own ForgettingRate table.
- When user launches the Brain Engraver application on the mobile phone, the login page will be shown. If the user does not have an account, user can create a new account using the sign-up button.
- In the NUGU Play "뇌새김" within the NUGU application, there is a sample voice interaction sentences for the user to try.
- When the user speaks "아리야, 뇌새김 시작해줘", the NUGU AI speaker says it is launched, and waits for the user to choose a certain function.

### NUGU AI Speaker

#### Choosing Wordset
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100887581-771f3600-34f8-11eb-9058-6b16f02fb4fb.png", width="800">
</p>
<p align="center">
  <em>Use case - Choosing wordset, chapter</em>
</p>
<br>

- When the user speaks "정하자", the NUGU AI Speaker starts the application and asks the user which chapter to choose. The user can choose the wordset "TOEIC" by speaking "토익", "토플" for "TOEFL", and "지얼이" for "GRE".
- If the user does not choose the correct chapter, the application terminates

#### Choosing Chapter
- After choosing the wordset to learn, NUGU AI Speaker automatically asks you to choose a chapter(Subwordset). The user can choose the chapter he/she wants by speaking "챕터 일", "챕터 이" and so on.
- If the user does not choose the correct chapter, the application terminates.
- When the word set and sub word set has been choosen by the user, the NUGU AI Speaker speaks "TOEIC(TOEFL or GRE) 의 Chapter 1(2 or 3)을 학습하기로 설정 완료했습니다!"

#### Learning Stage
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100887586-78e8f980-34f8-11eb-8607-57ac308a417a.png", width="800">
</p>
<p align="center">
  <em>Use case - Learning stage</em>
</p>
<br>

- After choosing the wordset and the chapter(Subwordset), the user starts the "study" function by simply speaking "공부하자".
- In the "study" function, which is the learning stage mentioned above in the specifications, NUGU AI speaker reads the word 3 times.
- In order to learn the next word, the user should say "다음".
- The "study" function terminates when the chosen chapter is finished.
- If the user wishes to interrupt during the process, the user can just say "아리아, 그만"
- The forgettingstage for each word in the selected chapter is initialized to 1.

#### Test Stage
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100887591-7a1a2680-34f8-11eb-8134-f151aa6e4a7e.png", width="950">
</p>
<p align="center">
  <em>Use case - Test stage</em>
</p>
<br>

- After finishing the learning stage, the user can start the test stage, "exam" function by "시험보자"
- Before starting "exam" function, forgettingrate is updated according to the time when the "exam" function is called.
- In the "exam" function, the user goes through total 15 words, which comprises 10 words that the user have just learned in the learning stage, and 5 words that is likely to be forgotten.
- 5 words are chosen by the Ebbinghaus's Forgetting Curve theory.
- The forgettingstage for each word is updated depending on the user's answer.
- The testtime for each word is updated with the time when the speaker received the user's answer.

#### Interrupt/terminate function
<p align="center">
<img src="https://user-images.githubusercontent.com/69071182/100887595-7ab2bd00-34f8-11eb-9d4c-1ee60a5005c0.png", width="800">
</p>
<p align="center">
  <em>Use case - Interrupt</em>
</p>
<br>

- In order to finish the application during the process of "learning stage" or "test stage", user should say "아리아, 뇌새김 그만" or "아리아, 뇌새김 닫아줘"
- When user says "아리아 , 그만", the application terminates without saving its progress.
- When NUGU speaker is in the session waiting for the user to speak, user can just say "그만" to terminate the process.

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

<p>
<img src="https://user-images.githubusercontent.com/69071182/100895766-468fca00-3501-11eb-84d7-0445e304cc89.png", width="800">
</p>
<p>
  <em>ForgettingRate database</em>
</p>
<br>

According to the forgettingrate algorithm defined above, the forgetting rate has a value from 0 to 10000. The reason for not defining the forgetting rate as 0-100% is to avoid same values as much as possible. In addition, if the test is re-tested within a short period of time, the forgetting rate can be very high, so if the forgettingrate is calculated higher than 10000, the forgettingrate is updated with 10000. In the case of long-term memory, the forgettingrate remains unchanged and continues to remain at 20000, which is always higher than the forgettingrate of the words in stage 1 to 4. According to the table above, the forgettingrate becomes lower over time, but at a higher stage, the forgettingrate remains high over time, and then decreases slowly. It appears that the higher the stage, the higher the forgettingrate. After the actual test phase, because the user's response time varies in seconds, the same forgettingrate is rarely found. As a result, it can extract five words that have lower forgettingrate. In the above ForgettingRate database image, the testtime is different in seconds, and the forgettingrate is stored differently for each word. 

### Error
- The problem behind NUGU playbuilder is that it can only map the specific word to the intent. This means that even though the intent's name is different(same with entity's name and action's name), the invocation word or the word that NUGU spekaer learned cannot be the same. On top of this, Intent created by us was prohibited to use in multiple actions unless its a one -continuously-starting branch action. Originally, we wanted to make a "Exam Function" that only tested the user with the words that the user just learnt, and a "Forgetting Rate Exam Function" to test only the words that the user is likely to forgotten. So naturally, since NUGU playbuilder's restrictions forced us to merge the two "Exam Function" and "Forgetting Rate Function" together. To illustrate a light on the matter, we created two actions for "Exam Function" and "Forgetting Rate Exam Function". Since only one entity type can be mapped to one action, so we had to create two different named entity types named "Answer" and "Forgetting Rate Answer". These two entity types were mapped to each intents, and those intents consists of the meaning of the words. When we ran the program and tested, NUGU playbuilder did not know what request to send, so it did not work. By this reason, we had no choice to merge these two "Exam Function" and "Forgetting Rate Function" together.
- There were also a problem even when we merged these two actions. The problem was that when user started the exam action for the first time, there would be only 10 questions that the user have learned and 5 blank words that was supposed to be "likely-to-be-forgotten words". Consequently, error occured in the first test. So, in order to solve this problem, we had no choice but to increment 5 more words to the TOEIC's chapter 1. By doing this, on the first exam, NUGU playbuilder gave the test with 15 words that had been learned by the user, and on the second exam, NUGU playbuilder gave 10 just-learned words and 5 likely-to-be-forgotten words.


## Conclusion
Our Demo of this project : 


## You can also see...
Our documentation of this project: https://www.overleaf.com/read/dpxgnnkhzkct
