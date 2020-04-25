from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "I Made Website With Python + Flask + Linux + Apache2!"

@app.route("/returnsHTML")
def secondEndPoint():
    return """
<html>
        <body>
                <h1> What I learned about sed</h1>
                <p><a href="https://www.grymoire.com/Unix/Sed.html">I learned it all here!</a>
                <h2>First thing I learned</h2>
                <p> Command sed s/ is the essential for substitution. </p>
                <h2>Second Thing I learned</h2>
                <p> The slash is a delimeter and could use the backslash to quote the slash. </p>
                <h2>Thrid thing I learned</h2>
                <p> Using \1 to keep part of the pattern. </p>
        </body>
</html>
"""


if __name__ == "__main__":
    app.run()


