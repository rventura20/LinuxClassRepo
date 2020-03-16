question1(){
	echo "How do you edit a crontab?"
	echo "a) crontab -c"
	echo "b) crontab -e"
	echo "C) crontab -edit"
	echo "d) crontab -m"
	read answer
	case $answer in
		"a")
			echo "giovani question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "giovani question 2 right" >> $ANSWER_FILE
			;;
		"c")

			echo "giovani question 3 wrong" >> $ANSWER_FILE
			;;
		"d")

			echo "giovani question 4 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question1
			;;
	esac

}

question2(){
	echo "how do you display your current crontab?"
	echo "a) crontab -d"
	echo "b) crontab -display"
	echo "c) crontab -ls"
	echo "d) crontab -l"
	read answer
	case $answer in
		"a")
			echo "giovani question 1 wrong" >> $ANSWER_FILE
			;;
		"b")
			echo "giovani question 2 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "giovani question 3 wrong" >> $ANSWER_FILE
			;;
		"d")
			echo "giovani question 4 right" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question2
			;;
	esac
}

question3(){
	echo "In which directory are the crontab files for users stored on Debian?"
	echo "a) /var/spool/cron/crontabs"
	echo "b) /user/bin/cron"
	echo "c) /user/lib/cron/tabs"
	echo "d) /var/spool/cron/users/tabs"
	read answer
	case $answer in
		"a")
			echo "giovani question 1 right" >> $ANSWER_FILE
			;;
		"b")
			echo "giovani question 2 wrong" >> $ANSWER_FILE
			;;
		"c")
			echo "giovani question 3 wrong" >> $ANSWER_FILE
			;;
		"d")
			echo "giovani question 4 wrong" >> $ANSWER_FILE
			;;
		*)
			echo "Please enter a valid selection from a-d"
			question3
			;;
	esac
}



run_giovanirangels_questions(){
	question1
	question2
	question3
}
