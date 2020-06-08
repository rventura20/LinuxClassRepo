question1(){
	echo "What will show you all the subdirectories of the current directory"
	echo "a) ls"
	echo "b) cat"
	echo "c) type"
	echo "d) biff"
	read answer
	case $answer in
		"a" )
			echo "$RIGHT" >> "$ANSWER_FILE"
			;; #break
		"b" )
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"c" )
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"d" ) 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac
		
}

question2(){
	echo "How to list files in reverse order?"
	echo "a) ls"
	echo "b) ls -r"
	echo "c) ls -t"
	echo "d) list -rev"
	read answer
	case $answer in
		"a" ) 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"b" ) 
			echo "$RIGHT" >> "$ANSWER_FILE"
			;;
		"c" )	
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"d" )   
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac
}

question3(){
	echo "Which command is used to display a line of text that is passed as an arguement?"
	echo "a) cp"
	echo "b) rm"
	echo "c) echo"
	echo "d) ls"
	read answer
	case $answer in
		"a" ) 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"b" ) 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		"c" ) 
			echo "$RIGHT" >> "$ANSWER_FILE"
			;;
		"d" ) 
			echo "$WRONG" >> "$ANSWER_FILE"
			;;
		*) 
			echo "Please enter a valid selection from a-d"
			question3
			;;
	esac

}

run_marcus_questions(){
	question1
	question2
	question3
}
