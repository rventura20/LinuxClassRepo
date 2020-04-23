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
                <h1>Hello Welcome to my website! I am les, and this is what I learned about sed:</h1>
                <p><a href="https://www.grymoire.com/Unix/Sed.html">I learned it all here!</a>
                <h2>The first thing I learned</h2>
                <p> First of all, sed is one of the most important command tools out there! One basic utility I learned was that the letter "g" means global. Example: sed '"s/hello//g' oldFile". The g will remove the letter hello in all places and replace it with blank. If there is no letter g, then the only word that will be removed will be the first one. </p>
                <h2>The second thing I learned</h2>
                <p> It is important to remember that sed does not changes the original file! Whenever you make a change/command all that sed does output new information depending in what you have commanded. </p>
                <h2>Third and last thing I learned</h2>
                <p> In relation to the fact that sed does not overwrites a file it can still create a new file with the new output! Example: "sed 's/hello/bye/' oldFile >newFile". The ">" will create a new file with the modified version that you will be able to see. </p>
        </body>
</html>
"""


if __name__ == "__main__":
    app.run()


