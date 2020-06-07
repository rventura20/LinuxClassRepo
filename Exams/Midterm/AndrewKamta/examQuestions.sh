question1(){
	echo "Which command do you use to insert a text file to grep"
	echo "a) wget"
	echo "b) git get"
	echo "c) insert file.txt"
	echo "d) just copy and past link"
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
	echo "Fill in the blank to find all matching words, the, in the text file : grep ____ the pg1.txt | wc -l"
	echo "a) -i"
	echo "b) -wi"
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
	echo "Which command allows you to find the lines without the word the, using grep?"
	echo "a) grep -i"
	echo "b) grep -wo"
	echo "c) grep -v"
	echo "d) grep -the"
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
