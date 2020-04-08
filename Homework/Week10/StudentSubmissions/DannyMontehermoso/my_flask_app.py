from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "My apache website"

@app.route("/returnsHTML")
def secondEndPoint():
    return "<html><body><h1>Sed Secrets</h1><p>Sed is the ultimate stream editor!The language is very simple, but the documentation is terrible.Sed is a special editor for modifying files automatically.Sed is also a marvelous utility.</p></body></html>"




if __name__ == "__main__":
    app.run()
