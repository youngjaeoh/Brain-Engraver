import requests
from flask import request
import json
import db

def requestUser(url, token):
    headers = {
        'Content-Type': "application/json",
        'Authorization': "Bearer " + token
    }

    response = requests.request("GET", url, headers=headers)
    print(response.json())
    jsonedResponse = response.json()
    return jsonedResponse


def OAUTH_token():
    # OAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTH

    # token parsing
    data = json.loads(request.get_data().decode('utf8').replace("'", '"'))
    token = data['context']['session']['accessToken']

    print("this is the token!!!!!!!!!: ", token)

    return token
    # OAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTH

def OAUTH_USERID(token):
    # OAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTH

    # 회원인지 확인 -> POST https://api.github.com/user
    url = "https://api.github.com/user"

    oauthresponse = requestUser(url, token)

    userId = oauthresponse['login']

    strrrrUserId = db.getUser(userId)
    if strrrrUserId == 0:
        print("no id!!! making a new one")
        db.setToken(userId, token)
        db.createTable(userId)
    else:
        pass

    return userId
    # OAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTHOAUTH