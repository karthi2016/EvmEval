#!/bin/sh 
scorer=./scorer_v1.7.py

echo "Evaluating system A, should be a perfect system\n"
$scorer -g data/scoring_demo/gold.tbf -s data/scoring_demo/sample_system_A.tbf -d data/scoring_demo/A_out.tmp -t data/scoring_demo/tkn/ -o data/scoring_demo/score_prefect.scores
echo "Stored score report at data/scoring_demo/score_prefect.tmp\n"

echo "Evaluating system B, with one file missed\n"
$scorer -g data/scoring_demo/gold.tbf -s data/scoring_demo/sample_system_B.tbf -d data/scoring_demo/B_out.tmp -t data/scoring_demo/tkn/ -o data/scoring_demo/score_miss_one_file.scores
echo "Stored score report at data/scoring_demo/score_miss_one_file.tmp"

echo "Evaluating system C, with some token and type errors\n"
$scorer -g data/scoring_demo/gold.tbf -s data/scoring_demo/sample_system_C.tbf -d data/scoring_demo/C_out.tmp -t data/scoring_demo/tkn/ -o data/scoring_demo/score_system_C.scores
echo "Stored score report at data/scoring_demo/score_system_C.tmp"

echo "Evaluating system D, with no response\n"
$scorer -g data/scoring_demo/gold.tbf -s data/scoring_demo/sample_system_D.tbf -d data/scoring_demo/D_out.tmp -t data/scoring_demo/tkn/ -o data/scoring_demo/score_empty.scores
echo "Stored score report at data/scoring_demo/score_empty.tmp"
