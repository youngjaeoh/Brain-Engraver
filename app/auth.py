import requests
import json

def requestUser(url, token):
    headers = {
        'Content-Type': "application/json",
        'Authorization': "Bearer " + token
    }

    response = requests.request("GET", url, headers=headers)
    print(response.json())
    jsonedResponse = response.json()
    return jsonedResponse
