question1(){
	echo "what is git"
	echo "a) a distributed version control system and source code management"
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
	echo "What command do you use to make a commit"
	echo "a) -b"
	echo "b) -c"
	echo "c) -m"
	echo "d) impossible to commit a file"
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
	echo "how do you configure a user name"
	echo "a) .name"
	echo "b) .email"
	echo "c) .house"
	echo "d) .heic"
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
