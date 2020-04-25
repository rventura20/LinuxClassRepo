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
		<p> Sed is like a command to search and replace.To make a change we write sed 's/wordtochange/wordyouwant/' or /g' to make it global. </p>
		<h2>Second thing I learned</h2>
                <p> I also learned that you make changes with sed but it doesn't override the file. Meaning, it does not update the file with the new changes, it just outputs them.To fix this, they can be put in a new file in 3 different ways: 1)sed 's/wordtochange/wordyouwant/' filename >newFilename 2) sed 's/wordtochange/wordyouwant/' <file name >newFilename 3) sed 's/wordtochange/wordyouwant/' 0<filename 1>newFilename  </p>
		<h2>Third thing I learned</h2>
                <p> You can also modify a file you're working on inplace without writing the redirection. The correct way to do it is: sed -i  's/wordtochange/wordthatyouwant/' nameofFile </p>
	</body>
</html>
"""
 
 
if __name__ == "__main__":
    app.run()

