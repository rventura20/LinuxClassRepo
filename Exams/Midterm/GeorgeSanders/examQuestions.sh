#!/bin/bash
right=0
total=3
question1(){
	echo "What does wc -c do?"
	echo ""
	echo "1: show lines, words and character count"
	echo "2: show line count only"
	echo "3: shows character count only"
	echo "4: shows word count only"
	echo ""
	echo "Type the number of your answer"
	echo ""
  	read varAnswer1
	echo""

	case $varAnswer1 in 
		1) echo "Your answer is wrong, the right answer is 3"
			;;
		2) echo "Your answer is wrong, the right answer is 3"
			;;
		3) echo "Your answer is right."
			let "right+=1"
			;;
		4) echo "Your answer is wrong, the right answer is 3."
			;;
		*) echo "Please enter a number [1-4]"
			;;

	esac
	echo""



}

question2(){
	echo "How to completely uninstall git?"
	echo ""
	echo "1: sudo apt-get install git"
	echo "2: sudo apt-get --purge remove git"
	echo "3: sudo apt-remove git"
	echo "4: sudo remove purge git"
	echo ""
	echo "Type the number of your answer"
	echo ""
	read varAnswer2
	echo""

	case $varAnswer2 in 
		1) echo "Your answer is wrong, the right answer is 2"
			;;
		2) echo "Your answer is right"
			let "right+=1"
			;;
		3) echo "Your answer is wrong, the right answer is 2"
			;;
		4) echo "Your answer is wrong, the right answer is 2"
			;;
		*) echo "Please enter a number [1-4]"
			;;

	esac
	
	echo""



}

question3(){
	
	echo "How do you install git as a non-root user?"
	echo ""
	echo "1: sudo apt-install git"
	echo "2: apt-get install git"
	echo "3: sudo apt-get install git"
	echo "4: sudo get-apt install git"
	echo ""
	echo "Type the number of your answer"
	echo ""
	read varAnswer3
	echo""
	case $varAnswer3 in 
		1) echo "Your answer is wrong, the right answer is 3"
			;;
		2) echo "Your answer is wrong, the right answer is 3"
			;;
		3) echo "Your answer is right."
			let "right+=1"
			;;
		4) echo "Your answer is wrong, the right answer is 3."
			;;
		*) echo "Please enter a number [1-4]"
			;;

	esac
	echo""
	echo "Your Score is $right / $total."
}



run_georgesanderss_questions(){
	question1
	question2
	question3
}
