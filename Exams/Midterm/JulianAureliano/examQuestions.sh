question1(){
	echo "How to close a file in vim?"
	echo "a) :w"
	echo "b) :q"
	echo "c) :set nu"
	echo "d) :file close"
	read answer
	case $answer in
		"a") 
			echo "wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "right" >> $ANSWER_FILE
			;;
		"c")
			echo "wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac
}

question2(){
	echo "How to ignore a signal in bash?"
	echo "a) trap"
	echo "b) echo"
	echo "c) sigignore"
	echo "d) sigignore -now"
	read answer
	case $answer in
		"a") 
			echo "right" >> $ANSWER_FILE
			;;
		"b")
			echo "wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}

question3(){
	echo "What do you get if you mix a donkey and a horse?"
	echo "a) dorse"
	echo "b) mule"
	echo "c) llama"
	echo "d) mela" 
	read answer
	case $answer in
		"a") 
			echo "wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "right" >> $ANSWER_FILE
			;;
		"c")
			echo "wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "right" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question3
			;;
	esac
}
