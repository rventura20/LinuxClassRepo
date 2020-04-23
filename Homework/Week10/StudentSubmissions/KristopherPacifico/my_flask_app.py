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
		<p>The fist thing that I learned about sed is that it is a stream editor that allows the user to modify  files automatically by using it's specific commands to edit the text within the files accordingly.</p>
		<h2>Second thing I learned</h2>
                <p>The second thing I've learned about sed is the 's' command that changes the regular expression into a new value. This is the substitute command and it will follow the syntax: sed 's/regex/new/' <old >new. This syntax follows that each part of the command is followed  by the delimiters, which can be the slash, colon, underline or "|" character. The 's' command begins the syntax, the regex pattern search pattern is replaced by the replacement string but only replaces it once per line, since sed is line oriented. The output would then be stdout  to a "new" file from the "old "file. </p>
		<h2>Third thing I learned</h2>
		<p>The third thing I've learned about sed is using & as the matched string to either add characters or double the pattern you are searching for. By using the ampersand character you are corresponding it whatever pattern you find in the regex pattern search pattern. The character can be quite useful when determining what replacing strings you find without knowing what it initially is.</p>
	</body>
</html>
"""


if __name__ == "__main__":
    app.run()


