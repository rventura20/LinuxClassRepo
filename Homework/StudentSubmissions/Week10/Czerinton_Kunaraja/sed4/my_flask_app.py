from flask import Flask
app =  Flask(__name__)
@app.route("/")
def outPut():
    return "<html><body><h1>Sed point-4</h1><h2> Finding and repeating patterns with regular expressions.</h2><p>Following code finds number pattern and repeats it and prints using regular expressions.</p><code>echo \"hello 123\" | sed -r \'s/[0-9]+/& &/\'</code><p><b>Code Explained</b>: 0-9] regular expression finds the number, and & prints the found pattern. In this case repeats twice. </p></body></html>"

    

if __name__ == "__main__":
    app.run()
