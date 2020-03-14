question1(){

	echo "What does echo do?"

	echo "a) Write arguments to the standard output"

	echo "b) Write a history for the programmer to lean upon"

	echo "c) Provide a way to write a command at least three times"

	echo "d) Provide a sounding board for the programmer's complaints"

	read answer

	case $answer in

		"a") 

			echo "jacquelinerobinson question 1 right" >> $ANSWER_FILE

			;;

		"b")

			echo "jacquelinerobinson question 1 wrong" >> $ANSWER_FILE

			;;

		"c")

			echo "jacquelinerobinson question 1 wrong" >> $ANSWER_FILE

			;;

		"d") 

			echo "jacquelinerobinson question 1 wrong" >> $ANSWER_FILE

			;;

		*)

			echo "Please enter a valid selection from a-d"

			question1

			;;

	esac

}



question2(){

	echo "Specifically for this assignment how is echo used?" 

	echo "a) It is used to ask a question"

	echo "b) It is used to write answers to a file"

	echo "c) It is used to write an error message"

	echo "d) All of the above"

	read answer

	case $answer in

		"a") 

			echo "jacquelinerobinson question 2 wrong" >> $ANSWER_FILE

			;;

		"b")

			echo "jacquelinerobinson question 2 wrong" >> $ANSWER_FILE

			;;

		"c")

			echo "jacquelinerobinson question 2 wrong" >> $ANSWER_FILE

			;;

		"d") 

			echo "jacquelinerobinson question 2 right" >> $ANSWER_FILE

			;;

		*)

			echo "Please enter a valid selection from a-d"

			question2

			;;

	esac



}



question3(){

	echo "What does the echo -n option do?" 

	echo "a) It connects the shell to the droplet"

	echo "b) It suppresses further output"

	echo "c) It does not append a newline"

	echo "d) It appends a line number" 

	read answer

	case $answer in

		"a") 

			echo "jacquelinerobinson question 3 wrong" >> $ANSWER_FILE

			;;

		"b")

			echo "jacquelinerobinson question 3 wrong" >> $ANSWER_FILE

			;;

		"c")

			echo "jacquelinerobinson question 3 right" >> $ANSWER_FILE

			;;

		"d") 

			echo "jacquelinerobinson question 3 wrong" >> $ANSWER_FILE

			;;

		*)

			echo "Please enter a valid selection from a-d"

			question3

			;;

	esac

}



run_jacquelinerobinsons_questions(){

	question1

	question2

	question3

}
