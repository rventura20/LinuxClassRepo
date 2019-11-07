from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "I Made Website With  Python + Flask + Linux + Apache2!"

@app.route("/returnsHTML")
def secondEndPoint():
    return "<html><body><h1>A Header!</h1><p>Here is some data in a paragraph!</p></body></html>"


if __name__ == "__main__":
    app.run()

