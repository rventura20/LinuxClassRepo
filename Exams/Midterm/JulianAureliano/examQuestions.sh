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
	echo "What is the name of the current directory?"
	echo "a) ~"
	echo "b) /home"
	echo "c) ."
	echo "d) .."
	read answer
	case $answer in
		"a") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;; #break
		"b") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"c") 
			echo "$RIGHT" >> "$ANSWER_FILE"
			;;
		"d")
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac
}

question3(){
	echo "Which is another name for the directory 'one up' from your current directory?"
	echo "a) ~"
	echo "b) /home"
	echo "c) ."
	echo "d) .."
	read answer
	case $answer in
		"a") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;; #break
		"b") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"c") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"d")
			echo "$RIGHT" >> "$ANSWER_FILE"
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question3
			;;
	esac
}

run_julians_questions(){
	question1
	question2
	question3
}
