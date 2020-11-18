import time

sleepTime = 1

# def readWord(word, meaning):
    # time.sleep(sleepTime)
    # send nugu request with word
    # return 'listen word: ' + word + '\nlisten meaning: ' + meaning
    # return meaning

def testWord(word, meaning):
    # nugu speaks word
    print(word)
    # waits for response...
    response = 'answer'
    if response == meaning:
        print('correct!')
        # save your answer
    else:
        print('wrong!')
        # save your answer