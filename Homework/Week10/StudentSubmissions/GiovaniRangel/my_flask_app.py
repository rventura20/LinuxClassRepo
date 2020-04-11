from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "I Made Website With  Python + Flask + Linux + Apache2!"

@app.route("/returnsHTML")
def secondEndPoint():
    return """
<html>
        <body>
                <h1>What I learned about sed</h1>
                <p><a href="https://www.grymoire.com/Unix/Sed.html">I learned it all here!</a>
                <h2>First thing I learned</h2>
                <p> The flag pattern - /I makes the pattern match case insensitive</p>
                <h2>Second thing I learned</h2>
                <p> The curly braces "{}" are used to group commands </p>
                <h2>Third thing I learned</h2>
                <p> The "=" command prints the current line number to standard output, and only accepts one address </p>
        </body>
</html>
"""


if __name__ == "__main__":
    app.run()

