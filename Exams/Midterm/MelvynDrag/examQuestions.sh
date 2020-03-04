question1(){
	echo "How many eggs in a dozen?"
	echo "a) 12"
	echo "b) 24"
	echo "c) 100"
	echo "d) -1"
	read answer
	case $answer in
		"a") 
			echo "melvyn question 1 right" >> $ANSWER_FILE
			;;
		"b")
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac
}

question2(){
	echo "What is heaviest?  A lb. of feathers or a lb. of steel?"
	echo "a) feathers"
	echo "b) steel"
	echo "c) equal"
	echo "d) impossible to get a pound of feathers"
	read answer
	case $answer in
		"a") 
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "melvyn question 1 right" >> $ANSWER_FILE
			;;
		"d") 
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}

question3(){
	echo "What is best? Bears or Bees?"
	echo "a) bears"
	echo "b) bees"
	echo "c) battlestar galactica"
	echo "d) michael!" 
	read answer
	case $answer in
		"a") 
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "melvyn question 1 right" >> $ANSWER_FILE
			;;
		"c")
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "melvyn question 1 wrong" >> $ANSWER_FILE
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
