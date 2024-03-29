#!/usr/bin/env python

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Flask Containerized and running in Kubernetes'

if __name__ == '__main__':
    app.run(port=5010, debug=True,host='0.0.0.0')
