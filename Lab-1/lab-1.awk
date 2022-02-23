#!/bin/awk -f

BEGIN{
	FPAT = "([^,]+)|(\"[^\"]+\")";
	count = 0
}

{
	for( i = 1; i<=8; ++i){
		if(i<=7){
			printf("%s , \t",$i);
		}
		else if(NR == 1)
			print("total");
	}
	if(NR !=1){
		total = 0
		for( i = 8; i<=32; ++i){
			total += $i;	
		}
		print(total);
	}
}
END{
	sort -t "," -nk8 -r newData.csv > sorted.csv 
	}

