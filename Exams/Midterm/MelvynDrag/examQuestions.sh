question1(){
	echo "Which of the following do NOT provide Linux servers in the cloud?"
	echo "a) Microsoft Word"
	echo "b) Google Cloud"
	echo "c) Digital Ocean"
	echo "d) Amazon Web Services"
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
	echo "Which of the following is a popular command line text editor?"
	echo "a) sed"
	echo "b) cowsay"
	echo "c) Emacs"
	echo "d) GREP" 
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
	echo "Which of the following is NOT version control software?"
	echo "a) git"
	echo "b) ubuntu"
	echo "c) mercurial"
	echo "d) svn" 
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
			question3
			;;
	esac
}

run_melvyns_questions(){
	question1
	question2
	question3
}
