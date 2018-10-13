#!/usr/bin/python
from flask import Flask, jsonify, request, render_template
from flask_ask import Ask, statement, question, session
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

base_url = "/api/"


ask = Ask(app, '/')

@ask.launch
def quiz_start():
    start_msg = render_template("welcome to the spelling quiz")
    return question(start_msg)

if __name__ == '__main__':
    app.run()

    



    