export ANSWER_FILE="answers.txt"
export RIGHT="right"
export WRONG="wrong"

clear_answers(){
	rm $ANSWER_FILE
}

run_exam(){
	source MelvynDrag/examQuestions.sh
	run_melvyns_questions
	source JulianAureliano/examQuestions.sh
	run_julians_questions
	source AmineAhmiri/examQuestions.sh
	run_amines_questions
	source TemidayoEkundayo/examQuestions.sh
	run_temidayos_questions
	source AndrewKamta/examQuestions.sh
	run_andrews_questions
	source AllenMac/examQuestions.sh
	run_allens_questions
	source JamaalPierce/examQuestions.sh
	run_jamaals_questions
	source MarcusSison/examQuestions.sh
	run_marcus_questions
	source ShivangiViradiya/examQuestions.sh
	run_shivangis_questions
}

print_results(){
	right=$(grep -cwi "$RIGHT" $ANSWER_FILE)
	total=$(wc -l < $ANSWER_FILE)
	echo "you earned : $right / $total"
}

clear_answers
run_exam
print_results
