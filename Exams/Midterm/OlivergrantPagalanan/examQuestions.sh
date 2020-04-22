question1(){
	echo "What is the complete git command in order to do a commit with a message?"
	echo "a) git commit (message)"
	echo "b) git commit -M (message)"
	echo "c) git commit -m (message)"
	echo "d) git commit | echo (message)"
	read answer
	case $answer in
		"a")
			echo "oliver question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "oliver question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "oliver question 1 right" >> $ANSWER_FILE
			;;
		"d")
			echo "oliver question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo " Please enter a valid selection from a-d"
			question1
			;;
	esac
}

question2(){
	echo "What git command is used to be able to apply all commits you done into a repository?"
	echo "a) git push origin master"
	echo "b) git commit -A origin master"
	echo "c) git checkout master"
	echo "d) git clone (link)"
	read answer
	case $answer in
		"a")
			echo "oliver question 2 right" >> $ANSWER_FILE
			;;
		"b")
			echo "oliver question 2 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "oliver question 2 wrong" >> $ANSWER_FILE
			;;
		"d")
			echo "oliver question 2 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}

question3(){
	echo "What git command is used in order to fork a repository?"
	echo "a) git push origin master"
	echo "b) git init"
	echo "c) git remote add origin (link)"
	echo "d) git clone (link)"
	read answer
	case $answer in
		"a")
			echo "oliver question 3 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "oliver question 3 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "oliver question 3 wrong" >> $ANSWER_FILE
			;;
		"d")
			echo "oliver question 3 right" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question3
			;;
	esac
}



run_olivergrantpagalanans_questions(){
	question1
	question2
	question3
}
