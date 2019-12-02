from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<html><body><h1>Sed is the ultimate stream editor. If that sounds strange, picture a stream flowing through a pipe.</h1></body></html>"

@app.route("/sed1")
def first():
    return "<html><body><h1>Sed has several commands, but most people only learn the substitute command: s. The substitute command changes all occurrences of the regular expression into a new value.</h1></body></html>"

@app.route("/sed2")
def second():
    return "<html><body><h1>Most UNIX utilities work on files, reading a line at a time. Sed, by default, is the same way. If you tell it to change a word, it will only change the first occurrence of the word on a line.</h1></body></html>"

@app.route("/sed3")
def third():
    return "<html><body><h1>GNU has added another pattern flags - /I
This flag makes the pattern match case insensitive. This will match abc, aBc, ABC, AbC, etc.</h1></body></html>"

@app.route("/sed4")
def fourth():
    return "<html><body><h1>You can combine flags when it makes sense. Please note that the "w" has to be the last flag.</h1></body></html>"

@app.route("/sed5")
def fifth():
    return "<html><body><h1>One method of combining multiple commands is to use a -e before each command</h1></body></html>"

if __name__ == "__main__":
    app.run()