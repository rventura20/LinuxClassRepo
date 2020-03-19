question1(){
	echo "how to ssh into machine?"
	echo "a) ssh - root -m 192.168.7.1"
	echo "b) ssh root@192.168.7.1"
	echo "c) ssh root -at 192.168.7.1"
	echo "d) ssh --user root --ipaddress 192.168.7.1"
	read answer
	case $answer in
		"a") 
			echo "pierre question 1 right" >> $ANSWER_FILE
			;;
		"b")
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac
}

question2(){
	echo "which is a common hashing tool?"
	echo "a) md5sum"
	echo "b) hash algorithm"
	echo "c) pdp-11"
	echo "d) i7 hash"
	read answer
	case $answer in
		"a") 
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "pierre question 1 right" >> $ANSWER_FILE
			;;
		"d") 
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}

question3(){
	echo "what is not linux distributions?"
	echo "a) ubuntu"
	echo "b) debian"
	echo "c) red hat"
	echo "d) pooky" 
	read answer
	case $answer in
		"a") 
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "pierre question 1 right" >> $ANSWER_FILE
			;;
		"c")
			echo "pierre question 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "pierre question 1 wrong" >> $ANSWER_FILE
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
