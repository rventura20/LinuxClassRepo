question1(){
	echo "Which of the following terms IS NOT considered a Permission?"
	echo "a) Execute"
	echo "b) Edit"
	echo "c) Read"
	echo "d) Write"
	read answer
	case $answer in
		"a")
			echo "$WRONG" >> $ANSWER_FILE
			;;
		"b")
			echo "$RIGHT" >> $ANSWER_FILE
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
	echo "What symbol is used for Output Redirection?"
	echo "a) >"
	echo "b) &<"
	echo "c) ../"
	echo "d) <"
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
			question2
			;;
	esac
}

question3(){
	echo "In order to redirect an error message to a file named 'CrashDump', we use the _____ command."
	echo "a) 1>"
	echo "b) <0"
	echo "c) 2>"
	echo "d) 1>>"
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
			# if no valid input, run the question again.
			question3
			;;
		esac
}



run_jamaals_questions(){
	question1
	question2
	question3
}
