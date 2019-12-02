Endpoints:
http://142.93.119.235/sed1/
http://142.93.119.235/sed2/
http://142.93.119.235/sed3/
http://142.93.119.235/sed4/
http://142.93.119.235/sed5/

# Conf File
<VirtualHost *:80>
     # Add machine's IP address (use curl ipinfo.io/ip)
     ServerName 142.93.119.235 
     
     # Some error logging stuff
     ErrorLog ${APACHE_LOG_DIR}/error.log
     LogLevel warn
     CustomLog ${APACHE_LOG_DIR}/access.log combined

     # Give an alias to to start your website url with
     WSGIDaemonProcess site1
     WSGIScriptAlias /sed1 /home/webdeveloper/ExampleFlask/my_flask_app.wsgi
     <Directory /home/webdeveloper/ExampleFlask>
            WSGIApplicationGroup site1
            WSGIProcessGroup site1
            Options FollowSymLinks
            AllowOverride None
            Require all granted
     </Directory>

     # Set up the other website
     WSGIDaemonProcess site2
     WSGIScriptAlias /sed2 /home/webdeveloper/ExampleFlask2/my_flask_app.wsgi
     <Directory /home/webdeveloper/ExampleFlask2>
            WSGIApplicationGroup site2
            WSGIProcessGroup site2
            Options FollowSymLinks
            AllowOverride None
            Require all granted
     </Directory>

     # Set up the other website
     WSGIDaemonProcess site3
     WSGIScriptAlias /sed3 /home/webdeveloper/ExampleFlask3/my_flask_app.wsgi
     <Directory /home/webdeveloper/ExampleFlask3>
            WSGIApplicationGroup site3
            WSGIProcessGroup site3
            Options FollowSymLinks
            AllowOverride None
            Require all granted
     </Directory>

     # Set up the other website
     WSGIDaemonProcess site4
     WSGIScriptAlias /sed4 /home/webdeveloper/ExampleFlask4/my_flask_app.wsgi
     <Directory /home/webdeveloper/ExampleFlask4>
            WSGIApplicationGroup site4
            WSGIProcessGroup site4
            Options FollowSymLinks
            AllowOverride None
            Require all granted
     </Directory>

     # Set up the other website
     WSGIDaemonProcess site5
     WSGIScriptAlias /sed5 /home/webdeveloper/ExampleFlask5/my_flask_app.wsgi
     <Directory /home/webdeveloper/ExampleFlask5>
            WSGIApplicationGroup site5
            WSGIProcessGroup site5
            Options FollowSymLinks
            AllowOverride None
            Require all granted
     </Directory>


</VirtualHost>

# my_flask_app.py File
from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "<h2> Sed can be used to delete a range of lines  </h2> "
if __name__ == "__main__":
    app.run()
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<h2> Sed can be used to display all except some lines </h2> "

if __name__ == "__main__":
    app.run()
from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "<h2> Sed can be used to print line numbers </h2>"
if __name__ == "__main__":
    app.run()
from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "<h2> Sed can be used to run multiple sed commands by using option 'e' </h2> "

if __name__ == "__main__":
    app.run()
from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "<h2> Sed can be used to duplicate the replaced line with /p flag </h2>"
if __name__ == "__main__":
    app.run()



# my_flask_app.wsgi File
#!/usr/bin/python3

import logging
import sys
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, '/home/webdeveloper/ExampleFlask')

from my_flask_app import app as application
application.secret_key = 'anything you wish'

#!/usr/bin/python3

import logging
import sys
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, '/home/webdeveloper/ExampleFlask2')

from my_flask_app import app as application
application.secret_key = 'anything you wish'

#!/usr/bin/python3

import logging
import sys
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, '/home/webdeveloper/ExampleFlask3')

from my_flask_app import app as application
application.secret_key = 'anything you wish'

#!/usr/bin/python3

import logging
import sys
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, '/home/webdeveloper/ExampleFlask4')

from my_flask_app import app as application
application.secret_key = 'anything you wish'

#!/usr/bin/python3

import logging
import sys
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, '/home/webdeveloper/ExampleFlask5')

from my_flask_app import app as application
application.secret_key = 'anything you wish'



