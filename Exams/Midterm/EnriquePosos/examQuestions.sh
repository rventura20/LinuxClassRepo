question1(){
        echo "Which command that will show all .txt files?"
        echo"a) ls -al .txt"
        echo"b) ls -l .txt"
        echo"c) ls -al *.txt"
        echo"d) ls -l *.txt"
        read answer
        case $answer in
                "a")
                       echo "enrique question 1 wrong" >> $ANSWER_FILE
                       ;;
               "b")
                       echo "enrique question 2 wrong" >> $ANSWER_FILE
                       ;;
               "c")
                       echo "enrique question 3 right" >> $ANSWER_FILE
                       ;;
               "d")
                       echo "enrique question 4 wrong" >> $ANSWER_FILE
                       ;;
               *)
                       echo "Please enter a valid selection from a-d"
                       question1
                       ;;
       esac

}

question2(){
        echo "What command would you use if you want give execute privilege to user, but leave other privileges untouched?"
        echo "a) chmod u+x mod.txt"
        echo "b) chmod ugo+rwx mod.txt"
        echo "c) chmod g+rwx mod.txt"
        echo "d) none of the above"
        read answer
        case $answer in
                "a")
                        echo "enrique question 1 right" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "enrique question 2 wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "enrique question 3 wrong" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "enrique question 4 wrong" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question2
                        ;;
        esac
}

question3(){
	echo "Which is used in order to stop a process?"
	echo "a) 'CTRL+Z'"
	echo "b) SIGTERM"
	echo "c) SIGINT"
	echo "d) All of the above"
	read answer 
	case $answer in
		"a")
			echo "enrique question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "enrique question 2 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "enrique question 3 wrong" >> $ANSWER_FILE
			;;
		"d")
			echo "enrique question 4 right" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d" 
			question3
			;;
	esac
}



run_enriquepososs_questions(){
	question1
	question2
	question3
}
