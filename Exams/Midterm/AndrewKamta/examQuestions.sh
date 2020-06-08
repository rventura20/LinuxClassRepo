question1(){
	echo "What command do you use to search for a string in a file?"
	echo "a) grep"
	echo "b) wget"
	echo "c) search"
	echo "d) find"
	read answer
	case $answer in
		"a")
			echo "$RIGHT" >> "$ANSWER_FILE"
			;;
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
	echo "Fill in the blank to find lines containing the whole word 'the', in pg1.txt :"
	echo "    grep ____ \"the\" pg1.txt"
	echo "a) -i"
	echo "b) -w"
	echo "c) -f"
	echo "d) -the"
	read answer
	case $answer in
		"a")
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"b")
			echo "$RIGHT" >> "$ANSWER_FILE"
			;;
		"c") 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"d")
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		*)
			echo "Please enter a valid selction from a-d"
			question2
			;;
		esac

}

question3(){
	echo "Which command allows you to find lines in 'file.txt' without the word 'the'?"
	echo "a) grep -i \"the\" file.txt"
	echo "b) grep -wo \"the\" file.txt"
	echo "c) grep -v \"the\" file.txt"
	echo "d) grep -the \"the\" file.txt"
	read answer
	case $answer in
		"a")
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
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
			question3
			;;
		esac
}

run_andrews_questions(){
	question1
	question2
	question3
}
