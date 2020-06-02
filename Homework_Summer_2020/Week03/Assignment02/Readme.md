# Basics of Users and Permissions

In this assignment you will test your knowledge of adding users and modifying permissions.

## Requirements

* Add the user "yourname" to your server
* Add the user "melvyn" to your server
* Add the user "virginia" to your server
* Add "melvyn" and "yourname" to a group called "njcu"
* Add virginia to the sudo group.
* Add my public ssh key to /home/melvyn/.ssh/authorized\_keys
* Add my public ssh key to /home/virginia/.ssh/authorized\_keys
* Create the file /home/yourname/lookHereMelvyn.txt with permissions that allow
 melvyn to modify the file.

## Submission guidelines

Submit the file:
`LinuxClassRepo/Homework_Summer_2020/Week03/Assignment02/YourName/ip_address.txt`
via pull request.

See the sample homework submission under the MelvynDrag directory

DO NOT DELETE YOUR SERVER UNTIL I GIVE YOU A 100.

To grade I will verify that I can:
* `ssh virginia@ipaddress` and then verify that virginia is in the `sudo` group.
* `ssh melvyn@ipaddress` and then modify the file
/home/yourname/lookHereMelvyn.txt

50 points for each thing I can do!

Submit the pull request no later than 11:59 PM of Monday, June 8th. Note, this
means that pull requests coming at 12:00 and 37 seconds will not count for
credit!
