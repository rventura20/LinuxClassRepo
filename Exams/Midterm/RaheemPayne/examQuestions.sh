question1(){
	echo "What is the numeric representation of rw-r-x--x?"
	echo "a) 651"
	echo "b) 777"
	echo "c) 987"
	echo "d) 652"  
	read answer
         case $answer in
                "a")
                        echo "Raheem question 1 right" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "Raheem question 1 wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "Raheem question 1 wrong" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "Raheem question 1 wrong" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question3
                        ;;
        esac
}


question2(){
        echo "To make a file writable by the owner, but deny everyone else all rights, what do you run?"
        echo "a) chmod 444 sampleFile.txt"
        echo "b) chown 700 sampleFile.txt"
        echo "c) chmod 200 sampleFile.txt"
        echo "d) chown 222 sampleFile.txt"
         read answer
         case $answer in
                 "a")
                         echo "Raheem question 1 wrong" >> $ANSWER_FILE
                         ;;
                 "b")
                         echo "Raheem question 1 wrong" >> $ANSWER_FILE
                         ;;
                 "c")
                         echo "Raheem question 1 right" >> $ANSWER_FILE
                         ;;
                 "d")
                         echo "Raheem question 1 wrong" >> $ANSWER_FILE
                         ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question2
                        ;;
         esac
}

question3(){
        echo "What does 'chmod 700 a' do?"
        echo "a) gives owner read, write, execute permission"
        echo "b) gives user read,and execute permission"
        echo "c) gives owner execute permission"
        echo "d) gives everyone write, and execute permission"
         read answer
         case $answer in
                "a")
                        echo "Raheem question 1 right" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "Raheem question 1 wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "Raheem question 1 wrong" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "Raheem question 1 wrong" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question3
                        ;;
        esac
}



run_raheempaynes_questions(){
	question1
	question2
	question3
}
