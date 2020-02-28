export ANSWER_FILE="answers.txt"

clear_answers(){
	rm $ANSWER_FILE
}

run_melvyns_questions(){
	source MelvynDrag/examQuestions.sh
	question1
	question2
	question3
}

run_julians_questions(){
	source JulianAureliano/examQuestions.sh
	question1
	question2
	question3
}

run_exam(){
	run_melvyns_questions
	run_julians_questions
}

print_results(){
	right=$(grep "right" $ANSWER_FILE | wc -l)
	total=$(wc -l $ANSWER_FILE)
	echo "you earned : $right / $total"
}

clear_answers
run_exam
print_results
