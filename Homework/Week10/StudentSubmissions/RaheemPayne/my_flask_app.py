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
                <p> Sed is used if you want to write a program that makes changes to a file. Its a editor that modifies files automatically </p>
                <h2>Second thing I learned</h2>
                <p> sed does not automaticallt overwrite the original file unless you tell it to do so by using '-i' command </p>
                <h2>Third thing I learned</h2>
                <p> When using commad: s for substitution, you aren't required to use quotation marks, but it is recommended that you do so if you are using meta-charactersin the command. </p>
        </body>
</html>
"""


if __name__ == "__main__":
    app.run()

