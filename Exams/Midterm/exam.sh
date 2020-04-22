export ANSWER_FILE="answers.txt"

clear_answers(){
	rm $ANSWER_FILE
}

run_exam(){
	source MelvynDrag/examQuestions.sh
	run_melvyns_questions
	source JulianAureliano/examQuestions.sh
	run_julians_questions
	source LeslyBerroa/examQuestions.sh
	run_leslyberroas_questions
	source ChristianBinoya/examQuestions.sh
	run_christianbinoyas_questions
	source ItsaBravo/examQuestions.sh
	run_itsabravos_questions
	source JacquelineChavarria/examQuestions.sh
	run_jacquelinechavarrias_questions
	source FelixFontanezJoaquin/examQuestions.sh
	run_felixfontanezjoaquins_questions
	source MuhammedJawneh/examQuestions.sh
	run_muhammedjawnehs_questions
	source KevinLazo/examQuestions.sh
	run_kevinlazos_questions
	source DevonMason/examQuestions.sh
	run_devonmasons_questions
	source JishanMin/examQuestions.sh
	run_jishanmins_questions
	source DannyMontehermoso/examQuestions.sh
	run_dannymontehermosos_questions
	source SuleyNyarko/examQuestions.sh
	run_suleynyarkos_questions
	source KristopherPacifico/examQuestions.sh
	run_kristopherpacificos_questions
	source OlivergrantPagalanan/examQuestions.sh
	run_olivergrantpagalanans_questions
	source FabricioPaguay/examQuestions.sh
	run_fabriciopaguays_questions
	source AnkitabenPatel/examQuestions.sh
	run_ankitabenpatels_questions
	source RaheemPayne/examQuestions.sh
	run_raheempaynes_questions
	source ChristopherPerez/examQuestions.sh
	run_christopherperezs_questions
	source EnriquePosos/examQuestions.sh
	run_enriquepososs_questions
	source GiovaniRangel/examQuestions.sh
	run_giovanirangels_questions
	source JacquelineRobinson/examQuestions.sh
	run_jacquelinerobinsons_questions
	source ArthurSalamanca/examQuestions.sh
	run_arthursalamancas_questions
	source GeorgeSanders/examQuestions.sh
	run_georgesanderss_questions
	source PierreShenouda/examQuestions.sh
	run_pierreshenoudas_questions
	source SalmanShezad/examQuestions.sh
	run_salmanshezads_questions
	source CesarTeran/examQuestions.sh
	run_cesarterans_questions
}

print_results(){
	right=$(grep "right" $ANSWER_FILE | wc -l)
	total=$(wc -l < $ANSWER_FILE)
	echo "you earned : $right / $total"
}

clear_answers
run_exam
print_results
