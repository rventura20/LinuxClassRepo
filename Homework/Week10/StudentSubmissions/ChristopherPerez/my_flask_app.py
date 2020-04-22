from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "I Made Website With  Python + Flask + Linux + Apache2!"

@app.route("/returnsHTML")
def secondEndPoint():
    return """
<html>
        <body style="background-color:grey;">
		<h1>What I learned about sed</h1>
		<p><a href="https://www.grymoire.com/Unix/Sed.html">I learned it all here!</a> 
		<h2>First thing I learned</h2>
		<p> The first thing I learned with sed is what you do with sed does not overwrite by default. This is extremely useful, as you may not always want to commit to a change. For example, a beginner may be trying out modifiers. If it were to ovverride by default, they would have had to undo or save a seperate file. This can be changed by adding a > FILENAME at the end. </p>
		<h2>Second thing I learned</h2>
		<p> There are many different addresses that can be used to modify your sed expresssion. Things like [ sed -n -e '1,4p' ] will print out the first four lines, and only those lines. Also, [ sed -n -e '4!p' ] can be used to print every line <B>EXCEPT</B> line 4.</p>
		<h2>Third thing I learned</h2>
		<p> Sed, is similar to grep. Grep is used strictly, and sed is used similarly to grep piped with cut. Knowing this, there are similar addresses, flags, and the like that can be used to spice up your life. You can use [0-9], *, and ^ which work exactly as they do with grep.</p>
                <h3><p> click the cat for my favorite song </p></h3>
                <a href="https://www.youtube.com/watch?v=2y6uFNDxwaQ">
                    <img src="https://i.kym-cdn.com/photos/images/original/001/400/980/6cf.gif" alt="dancing cat">
                    </a>
	</body>
</html>
"""


if __name__ == "__main__":
    app.run()

