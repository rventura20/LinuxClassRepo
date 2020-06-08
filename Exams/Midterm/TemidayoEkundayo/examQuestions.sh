question1(){
	echo "what is git"
	echo "a) a distributed version control system and source code management software"
	echo "b) a python language"
	echo "c) a file management system"
	echo "d) the chrome browser"
	read answer
	case $answer in
		"a") 
			echo "$RIGHT" >> $ANSWER_FILE
			;;
		"b")
			echo "$WRONG" >> $ANSWER_FILE
			;;
		"c")
			echo "$WRONG" >> $ANSWER_FILE
			;;
		"d") 
			echo "$WRONG" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			# if no valid input, run the question again.
			question1
			;;
	esac
}
question2(){
	echo "What flag do you use to add a message to a git commit"
	echo "a) -b"
	echo "b) -c"
	echo "c) -m"
	echo "d) you do no add messages to git commits"
	read answer
	case $answer in
		"a") 
			echo "$WRONG" >> $ANSWER_FILE
			;;
		"b")
			echo "$WRONG" >> $ANSWER_FILE
			;;
		"c")
			echo "$RIGHT" >> $ANSWER_FILE
			;;
		"d") 
			echo "$WRONG" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}
question3(){
	echo "How do you configure a user name for git?"
	echo "a) git config user.name"
	echo "b) git config user.email"
	echo "c) git config user.house"
	echo "d) git config username.heic"
	read answer
	case $answer in
		"a")
			echo "$RIGHT" >> $ANSWER_FILE
			;;
		"b")
			echo "$WRONG" >> $ANSWER_FILE
			;;
		"c")
			echo "$WRONG" >> $ANSWER_FILE
			;;
		"d")
			echo "$WRONG" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid question from a-d"
			question3
			;;
	esac

}



run_temidayos_questions(){
	question1
	question2
	question3
}
