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
                    <p> You do not have to put quotes in a sed command. But it is better and recommended if quotes (specifically single quotes) in doing sed commands </p>
                    <h2>Second thing I learned</h2>
                    <p> & is a special character used to put the string found in the replacement string even though it is not known. It can also be used any number of times in the replacement string  </p>
                    <h2>Third thing I learned</h2>
                    <p> You can specify which occurence should be edited in multiple ways such as:
                    1. using "\(" and "\)" to mark the pattern, 
                    2. adding a number after the subtitution command to indicate which pattern to be matched, and
                    3. combining a number with the global (g) flagto specify the portion to be changed </p>
            </body>
    </html>
    """


if __name__ == "__main__":
    app.run()

