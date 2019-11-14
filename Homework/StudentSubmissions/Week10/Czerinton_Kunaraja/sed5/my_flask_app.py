from flask import Flask
app =  Flask(__name__)
@app.route("/")
def outPut():
    return "<html><body><h1>Sed point-5</h1><h2> Finding and replacing every matching word with regular expressions. (Global replacement).</h2><p>Following code make changes to every word using g.</p><code>echo \"hello hello alpha 123\" | sed \'s/[a-z]/hi/g\'</code><p><b>Code Explained</b>: g changes every word with the found pattern. </p></body></html>"



if __name__ == "__main__":
    app.run()
