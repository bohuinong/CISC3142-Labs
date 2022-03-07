Lab2:
	@awk -F "," '{for(i = 1; i <= 8; i++) {printf("%s ,", $$i)}; print ""}' ../d66a59b6db4e59c16efd4c42ad411f8e/data.csv > table1.csv
	@awk -F "," '{for(i = 8; i <= 9; i++) {printf("%s ,", $$i)}; print ""}' ../d66a59b6db4e59c16efd4c42ad411f8e/data.csv > table2.csv
	@awk -F "," '{for(i = 7; i <= NF; i++) {if(i == 7 || i >= 10)printf("%s ,", $$i)}; print ""}' ../d66a59b6db4e59c16efd4c42ad411f8e/data.csv > table3.csv
