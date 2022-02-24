lab-1_run_awk:
	@awk -f 'lab-1.awk' data.csv > result.csv
	@echo Result file outputted to result.csv
	@echo Top 3 cars:
	@awk 'NR<5{print $0}' result.csv

