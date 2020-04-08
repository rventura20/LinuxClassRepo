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
                <p> printing every other line is designated by the amount of n in the following command: </p>
                <p> sed -n 'p;n' fileName </p>
                <p>The more n in the command... the more lines that are skipped.
		<h2>Second thing I learned</h2>
                <p> The insertion command is very intresting. The following commands will explain: </p>
                <p>if the command has the attachement -i; the file will be modified. </p>
                <p>sed -i 'text_message' fileName </p>
                <p>if the command excludes the options and has in i after the line number then the file will not be modified. However, the command will display what it would look like on screen. </p>
                <p>sed 'lineNumber(no space)i(space)'text_message' fileName</p>
                <h2>Third thing I learned</h2>
		<p> sed can use modify a file by deleting contents.</p>
                <p>Remember, if adding an -i as an option it will permenently modify the file.</p>
                <p>sed - '3d' fileName</p>
                <p>This will permenently delete the third line on the file.
                <p>sed 'n;d' fileName</p>
                <p>This will only display on screen the deletion of every other line.
	</body>
</html>
"""


if __name__ == "__main__":
    app.run()

