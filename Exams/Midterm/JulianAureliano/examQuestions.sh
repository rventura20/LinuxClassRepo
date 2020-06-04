question1(){
	echo "Which directory is your home directory?"
	echo "a) ~"
	echo "b) /home"
	echo "c) ."
	echo "d) .."
	read answer
	case $answer in
		"a") 
			echo "$RIGHT" >> "$ANSWER_FILE"
			;; #break
		"b") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"c") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"d")
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac


}

question2(){
	echo "todo"
}

question3(){
	echo "todo"
}

run_julians_questions(){
	question1
	question2
	question3
}
