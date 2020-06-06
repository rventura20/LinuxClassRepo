question1(){
	echo "How many eggs in a dozen?"
	echo "a) 12"
	echo "b) 24"
	echo "c) 100"
	echo "d) -1"
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
	echo "What is heaviest?  A lb. of feathers or a lb. of steel?"
	echo "a) feathers"
	echo "b) steel"
	echo "c) equal"
	echo "d) impossible to get a pound of feathers"
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
	# NOTE This is a nonsensical question from the show "The Office"
	echo "What is best? Bears or Bees?"
	echo "a) bears"
	echo "b) bees"
	echo "c) battlestar galactica"
	echo "d) michael!" 
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
