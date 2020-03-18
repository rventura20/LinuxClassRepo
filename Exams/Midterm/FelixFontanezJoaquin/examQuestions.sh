#!/bin/bash

question1(){
	echo "todo"
	echo "Using a command line, How to move file across multiple directory?"
	echo "a) mv /home/ghost/textFile /home/ghost/directoryFile"
	echo "b) mv /home/ghost/currentFile directoryFile"
	echo "c) MV currentFilename  nextDirectoryname"
	echo "d) mv currentFile"
	read answer
	case $answer in
		"a") 
			echo "felix question 1 right" >> $ANSWER_FILE
			;;
		"b")
			echo "felix question 1 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "felix question 1 wrong" >> $ANSWER_FILE
			;;
		"d") 
			echo "felix question 1 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;

	esac

}

question2(){
	echo "todo"
	echo "Command to move files within the same dictory?"
	echo "a) mv .curentFile nextdictory"
	echo "b) mv currentFile"
	echo "c) mv currentFile nextDictory"
	echo "d) cd currentFile nextDictory"
	read answer 
	case $answer in
	
		"a") 
			echo "felix question 2 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "felix question 2 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "felix question 2 right" >> $ANSWER_FILE
			;;
		"d")
			echo "felix question 2 wrong" >> $ANSWER_FILE
			;;
		*) 
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac

}

question3(){
	
	echo "todo"
}
	echo "What commands is used to move file to pervious directory?"
	echo "a) mv textFile ../../"
	echo "b) mv textFile"
	echo "c) mv textFile ../"
	echo "d) mv textFile../../../"
	read answer
	case $answer in

		"a")
			echo "felix question 3 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "felix question 3 wrong" >> $ANSWER_FILE
			;;
		"c")	
			echo "felix question 3 right" >> $ANSWER_FILE
			;;
		"d")
			echo "felix question 3 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question3
			;;

	esac

}


run_felixfontanezjoaquins_questions(){
	question1
	question2
	question3
}
