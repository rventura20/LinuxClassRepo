question1(){
        echo "Which Linux command is used to search for a specific word."
        echo "a) More"
        echo "b) Cat"
        echo "c) Grep"
        echo "d) pipe"
        read answer
        case $answer in
                "a")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "melvyn question 1 right" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question1
                        ;;
        esac
}

question2(){
        echo "Which command is used to separate commands so you can do multiple things simultaneously?"
        echo "a) Pipe"
        echo "b) Grep"
        echo "c) More"
        echo "d) Ls"
        read answer
        case $answer in
                "a")
                        echo "melvyn question 1 right" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question1
                        ;;
        esac
}

question3(){
        echo "Which option is used with grep command for ignoring the case in pattern searching?"
        echo "a) -a"
        echo "b) -v"
        echo "c) -i"
        echo "d) -e"
        read answer
        case $answer in
                "a")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "melvyn question 1 right" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "melvyn question 1 wrong" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question1
                        ;;
        esac
}



run_jishanmins_questions(){
        question1
        question2
        question3
}
