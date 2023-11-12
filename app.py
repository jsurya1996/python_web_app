# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Welcome, to python Web Application"

if __name__ == '__main__':
    app.run(host='0.0.0.0')

