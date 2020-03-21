question1(){
	echo "What does VIM stand for?"
	echo "a) Virginia Indians Matter"
	echo "b) VI Moderation"
	echo "c) Virtual Moderation"
	echo "d) VI Improved"
	read answer
	case $answer in
		"a") 
			echo "christopher perez 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "christopher perez 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "christopher perez 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "christopher perez 1 right" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac
}

question2(){
	echo "In VIM, how do you show numbers on the left side?"
	echo "a) :numshow"
	echo "b) :set nu"
	echo "c) :show numbers"
	echo "d) You cannot show numbers in VIM"
	read answer
	case $answer in
		"a") 
			echo "christopher perez 2 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "christopher perez 2 right" >> $ANSWER_FILE
			;;
		"c")
			echo "christopher perez 2 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "christopher perez 2 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}

question3(){
	echo "In VIM, how do you search for text?"
	echo "a) /TEXT"
	echo "b) Ctrl+F"
	echo "c) :search TEXT"
	echo "d) :grep TEXT" 
	read answer
	case $answer in
		"a") 
			echo "christopher perez 3 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "christopher perez 3 right" >> $ANSWER_FILE
			;;
		"c")
			echo "christopher perez 3 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "christopher perez 3 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question3
			;;
	esac
}

run_christopherperezs_questions(){
	question1
	question2
	question3
}
