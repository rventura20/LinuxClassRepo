from flask import Flask
app =  Flask(__name__)
@app.route("/")
def outPut():
    return "<html><body><h1>Sed point-1</h1><h2>subtituting words in file and writing it in a new file</h2><p>Following command finds hello in oldFile replaces it with Hi and saves it in newFile</p><code>sed s/hello/Hi/ oldFile >newFile</code><p><b>Code explained</b>: command sed is used with 's' which stands for substitute. Note that sed does not change the original oldFile</p></body></html>"

if __name__ == "__main__":
    app.run()
