Lab2:
	@awk -F "," '{for(i = 1; i <= 7; i++) { if (i==1) {if(NR != 1) {split($$1, date, /[/ ]/); $$1 = date[3] "/" date[1] "/" date[2] " " date[4];} printf("%s ,", $$1)} else if(i == 7) printf("%s ", $$i); else printf("%s ,", $$i)}; print ""}' ../d66a59b6db4e59c16efd4c42ad411f8e/data.csv > cars.csv
	@awk -F "," '{for(i = 7; i <= 9; i++) {if (i == 9) printf("%s ", $$i); else printf("%s ,", $$i)}; print ""}' ../d66a59b6db4e59c16efd4c42ad411f8e/data.csv > judges.csv
	@awk -F "," '{for(i = 7; i <= NF; i++) {if(i == 7 || i >= 10) if(i == NF) printf("%s ", $$i); else printf("%s ,", $$i)}; print ""}' ../d66a59b6db4e59c16efd4c42ad411f8e/data.csv > car_score.csv
