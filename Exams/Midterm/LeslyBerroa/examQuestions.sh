question1(){
        echo "todo"
        echo "What command do you use to remove a file in linux?"
        echo "a) remove filename.txt"
        echo "b) rm -r filename.txt"
        echo "c) remove -r filename.txt"
        echo "d) delete filename.txt"
        read answer
        case $answer in
                "a")
                        echo "lesly question 1 wrong" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "lesly question 1 right" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "lesly question 1 wrong" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "lesly question 1 wrong" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question1
                        ;;
        esac
}

question2(){
        echo "todo"
        echo "How to remove a directory"
        echo "a) quit! name"
        echo "b) remove -r name"
        echo "c) rm -r name"
        echo "d) rm -f name"
        read answer
        case $answer in
                "a")
                        echo "lesly question 2 wrong" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "lesly question 2 wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "lesly question 2 wrong" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "lesly question 2 right" >> $ANSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question2
                        ;;
        esac


}

question3(){
        echo "todo"
        echo "What can rm NOT do"
        echo "a) It allows you to remove any file from anyone even without their permission"
        echo "b) It allows you to remove a file"
        echo "c) You can remove directories"
        echo "d) You can forcibly remove your directory/file"
        read answer
        case $answer in
                "a")
                        echo "lesly question 3 is right" >> $ANSWER_FILE
                        ;;
                "b")
                        echo "lesly question 3 is wrong" >> $ANSWER_FILE
                        ;;
                "c")
                        echo "lesly question 3 is wrong" >> $ANSWER_FILE
                        ;;
                "d")
                        echo "lesly question 3 is wrong" >> $NSWER_FILE
                        ;;
                *)
                        echo "Please enter a valid selection from a-d"
                        question3
                        ;;
        esac
}

run_leslyberroas_questions(){
        question1
        question2
        question3
}

