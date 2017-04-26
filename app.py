from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Flask Dockerized'

if __name__ == '__main__':
    app.run(port=5010, debug=True,host='0.0.0.0')
