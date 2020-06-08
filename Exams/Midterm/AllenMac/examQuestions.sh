question1(){
	echo "How to quit vim without saving the file"
	echo "a) :q!"
	echo "b) :e!"
	echo "c) :e"
	echo "d) :exit"
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
			question1
			;;
	esac
}

question2(){
	echo "How to save a file in Vim without closing the file?"
	echo "a) :w"
	echo "b) :wq"
	echo "c) :s"
	echo "d) :q"
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
			question2
			;;
	esac

}
question3(){

	echo "Which command is used to split a vim window vertically?"
	echo "a) :vert"
	echo "b) :split"
	echo "c) :vsplit"
	echo "d) :vertsplit"
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
			question3
			;;
	esac

}



run_allens_questions(){
	question1
	question2
	question3
}
