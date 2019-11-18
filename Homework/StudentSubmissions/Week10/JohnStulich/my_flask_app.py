from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<html><body><h1>Zed's dead baby, Zed's dead.</h1><p>No, not Zed, Sed.</p><p>Sed stands for Stream Editor. Zed is a character from the movie Pulp Fiction.</p><p>The following pages will provide some examples on how to use Sed.</p></body></html>"

@app.route("/sed1")
def first():
    return "<html><body><h1>s for Substitution:</h1><p>The substitute command will change all occurences of the regular expression into a new value:</p><p>sed s/day/night/ <old >new</p><p>The above command changes the word day in the old file to the word new in the new file.</p></body></html>"

@app.route("/sed2")
def second():
    return "<html><body><h1>Using the Slash as a Delimiter:</h1><p>The character typed after the s is the delimiter. The character can be anything you want though usually that character tends to be a slash since that is what ed, more and vi use. But if you want to change a pathname that contains a slash i.e. usr/local/bin to /common/bin you could use the backslash to quote the slash:</p><p>sed 's/\/usr\/local\/bin/\/common\/bin/' <old >new</p><p>Or use colons instead:</p><p>sed 's:/usr/local/bin:/common/bin:' <old >new</p><p>Or use the pipe | character.</p><p>sed 's|/usr/local/bin|/common/bin|' <old >new</p></body></html>"

@app.route("/sed3")
def third():
    return "<html><body><h1>Which Version of Sed Are You Using?</h1><p>The command:</p><p>sed -V</p><p>will print out the version of sed you are using. You can also type: sed --version</p></body></html>"

@app.route("/sed4")
def fourth():
    return "<html><body><h1>Sed Command Help</h1><p>The command:</p><p>sed -h</p><p>will print a summary of the sed commands. You can also type: sed --help</p></body></html>"

@app.route("/sed5")
def fifth():
    return "<html><body><h1>Delete With d</h1><p>The following command can be used to delete every line that matches the restriction: d</p><p>If you want to look at the first 10 lines of a file, you can use:</p><p>sed '11,$ d' <file</p></body></html>"

if __name__ == "__main__":
    app.run()
