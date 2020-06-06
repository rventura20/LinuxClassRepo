question1(){
	echo "What ssh command is used to create a key pair for public key authentication ?"
	echo "a) ssh-keygen "
	echo "b) ssh-copy-id "
	echo "c) ssh-agent "
	echo "d) ssh-add "
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
			echo "Please enter a valid selection from a - d"
			question1
			;;
	esac
}

question2(){
	echo " What cd command is used in order to return directly to home directory "
	echo "a) cd/ "
	echo "b) cd .. "
	echo "c) cd~ "
	echo "d) cd "
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
			echo " Please enter a valid selection from a - d "
			question2
			;;
	esac

}

question3(){
	echo " How do you connect to remote server using command line ? "
	echo "a) ssh servername"
	echo "b) ssh username@ipaddress"
	echo "c) SSH servername "
	echo "d) SSH servername@ipaddress" 
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
			echo " Please enter a valid selection from a - d "
			question3
			;;
	esac
}

run_amines_questions(){
	question1
	question2
	question3
}
