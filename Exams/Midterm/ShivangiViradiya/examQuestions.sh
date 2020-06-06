question1(){
	echo "What is the function of cp command in linux."
	echo "a) copying files and directory"
	echo "b) change the directories"
	echo "c) delete a file"
	echo "d) remove a file"
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
	echo "Which command is used for create new directory?"
	echo "a) pwd"
	echo "b) mkdir"
	echo "c) touch"
	echo "d) mv"
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
		         echo "Please enter a valid selection from a-d"
	                 question2
	                 ;;
	 esac		
}

question3(){
	echo " _______ command is used for removing files in linux."
	echo "a) ls"
	echo "b) mv"
	echo "c) rm"
	echo "d) cp"
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

run_shivangis_questions(){
	question1
	question2
	question3
}
