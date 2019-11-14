from flask import Flask
app =  Flask(__name__)
@app.route("/")
def outPut():
    return "<html><body><h1>Sed point-2</h1><h2>Using echo with sed for subtitiute word</h2><p>Following code replaces the first word occurence of hello and replaces it with hi and prints.</p><code>echo \"hello world hello\" | sed s/hello/hi/</code><p><b>Code Explained</b>: combines echo with sed using pipe. Note that sed only changes the first occurence of word hello.</p></body></html>"

if __name__ == "__main__":
    app.run()
