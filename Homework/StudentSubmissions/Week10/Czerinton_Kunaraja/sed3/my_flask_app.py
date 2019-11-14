from flask import Flask
app =  Flask(__name__)
@app.route("/")
def outPut():
    return "<html><body><h1>Sed point-3</h1><h2>Using Regular Expression with sed for subtitute word</h2><p>Following code replaces the first word occurence of hello and replaces it with hi and prints using regular expressions.</p><code>echo \"hello 123\" | sed -r \'s/[a-z]*/hi/\'</code><p><b>Code Explained</b>: [a-z] regular expression finds the lower case words, and * indicates find all match. </p></body></html>"

if __name__ == "__main__":
    app.run()
