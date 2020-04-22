question1(){
	echo "Suppose you want to add 'this is a line' to a file, but you don't want to overwrite the contents of the file, what command would you use?"
	echo "a) echo 'this is a line' >> file"
	echo "b) echo 'this is a line' << file"
	echo "c) echo 'this is a line' < file"
	echo "d) System.out.println('this is a line')"
	read answer
	case $answer in
		"a") 
			echo "kristopher question 1 right" >> $ANSWER_FILE
			;;
		"b")
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac
}

question2(){
	echo "What command should you use to append the output of 'ls -al' to reroute all error messages to a file called myErrors? "
	echo "a) ls -al >>2 myErrors "
	echo "b) ls -al 1> myErrors"
	echo "c) ls -al 2>> myErrors"
	echo "d) ls -al stdout myErrors"
	read answer
	case $answer in
		"a") 
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "kristopher question 1 right" >> $ANSWER_FILE
			;;
		"d") 
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}

question3(){
	echo "If we have a text file named test.txt that contains:
	dog
	cat
	dragon
What would the following command output?
wc -w < file.txt"
	echo "a) nothing"
	echo "b) 3"
	echo "c) 0"
	echo "d) 1" 
	read answer
	case $answer in
		"a") 
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "kristopher question 1 right" >> $ANSWER_FILE
			;;
		"c")
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "kristopher question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question3
			;;
	esac

}



run_kristopherpacificos_questions(){
	question1
	question2
	question3
}
