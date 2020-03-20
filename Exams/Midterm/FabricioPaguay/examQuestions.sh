question1(){
	echo "What it means SQL?" 
	echo "a) Structure Query Languaje" 
	echo "b) Secuence Query Languaje" 
	echo "c) Software Query Languaje" 
	read answer 
	case $answer in
		"a")
			echo "fabricio question 1 right" >> $ANSWER_FILE
			;;
		"b")
			echo "fabricio question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "fabricio question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-c" 
			question1
			;;
	esac
}
question2(){
	echo "what .db stands for?" 
	echo "a) databoard" 
	echo "b) database" 
	echo "c) docbase" 
	read answer 
	case $answer in
		"a")
			echo "fabricio question 2 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "fabricio question 2 right" >> $ANSWER_FILE
			;;
		"c")
			echo "fabricio question 2 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-c" 
			question2
			;;
	esac
}
question3(){
	echo "A11 SQL statements ends with?" 
	echo "a) /"
	echo "b) }" 
	echo "c) ;" 
	read answer 
	case $answer in
		"a")
			echo "fabricio question 3 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "fabricio question 3 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "fabricio question 3 right" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-c"
			question3
			;;
	esac
}

run_fabriciopaguays_questions(){
	question1
	question2
	question3
}
