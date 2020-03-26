question1(){
        echo "How do you pause a process?"
        echo "a) ctrl + z"
        echo "b) pause + enter"
        echo "c) ctrl + c"
        echo "none of the above"
        read answer
                case $answer in
                        "a")
                                echo "Jacqueline question 1 right" >> $ANSWER_FILE ;;
                        "b")
                                echo "Jacqueline question 1 wrong" >> $ANSWER_FILE ;;
                        "c")
                                echo "Jacqueline question 1 wrong" >> $ANSWER_FILE ;;
                        "d")
                                echo "Jacqueline question 1 wrong" >> $ANSWER_FILE ;;
                        *)
                                echo "Please enter a valid selection from a-d" question1 
                                ;;
                esac
}
 
question2(){
        echo "Which of the following is not an ignorable signal"
        echo "a) SIGINT"
        echo "b) SIGTERM"
        echo "c) SIGSTOP"
        echo "d) SIGCONT"
        read answer
                case $answer in
                        "a")
                                echo "Jacqueline question 2 wrong" >> $ANSWER_FILE;;
                        "b")
                                echo "Jacqueline question 2 wrong" >> $ANSWER_FILE;;
                        "c")
                                echo "Jacqueline question 2 right" >> $ANSWER_FILE;;
                        "d")
                                echo "Jacqueline question 2 wrong" >> $ANSWER_FILE;;
                        *)
                                echo "Please enter a valid selection from a-d"
                                question2
                                ;;
                esac
}
 
question3(){
        echo "Which of the following signals kills a process and cannot be ignored"
        echo "a) SIGINT"
        echo "b) SIGTERM"
        echo "c) SIGPLEASEENDALREADY"
        echo "d) SIGKILL"
        read answer
                case $answer in
                        "a")
                                echo "Jacqueline question 3 wrong" >> $ANSWER_FILE;;
                        "b")
                                echo "Jacqueline question 3 wrong" >> $ANSWER_FILE;;
                        "c")
                                echo "Jacqueline question 3 wrong" >> $ANSWER_FILE;;
                        "d")
                                echo "Jacqueline question 3 right" >> $ANSWER_FILE;;
                        *)
                                echo "Please enter a valid selection from a-d"
                                question3
                                ;;
                esac
 
}
 
 
 
run_jacquelinechavarrias_questions(){
        question1
        question2
        question3
}

