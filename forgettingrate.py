# -*- coding: utf-8 -*-
"""ForgettingRate.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1w5p1-CgsvdGLzvHiULnNU70ruZy-vafC
"""
import math
import datetime


def fx(testTime):
  #최종test시간 input으로
  K = 1.48 # 상수
  C = 1.25 # 상수

  now = datetime.datetime.now()
  diff = now - testTime
  days, seconds = diff.days, diff.seconds
  hours = days*24 + seconds//3600
  t = int(hours) # 현재시간 - 최종test시간. (h단위). 또는, 하루에 한번 테스트 한다는 가정하에 그냥 24로 고정...하면 변수가 없어서 함수 성립 안됨ㅎㅎ
  
  x_move = 24(memoryStage -1)

  log = math.log10(t - x_move)
  
  y = (100*K)/(C*log + K)
  
  return y


def cal_memoryRate(memoryStage, testTime):
  if (memoryStage==5): #5단계는 memoryRate 항상 100(장기기억)
    new_memoryRate = 100
  else:
    n = 1 + 0.5*(int(memoryStage)-1) #1-4단계
    new_memoryRate = fx(testTime)*n

  if new_memoryRate>=100: #100%이상은 다 100처리
    new_memoryRate = 100

  return new_memoryRate


def update_memoryRate(previous_word_list): #어떤 형식으로 받아오는지 모르겠...ㅠㅠㅠ
  for word in previous_word_list:
    new_memoryRate = cal_memoryRate(word['memoryStage'], word['testTime'])
    word['memoryRate'] = new_memoryRate


#test stage 끝난 후 to_be_tested_list 비우기 전! testTime 먼저 업데이트
#exam에도 testTime 필드 있어야..
def update_testTime(to_be_tested_list):
  new_testTime = datetime.datetime.now()
  to_be_tested_list['testTime'] = new_testTime

