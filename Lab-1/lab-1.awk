#!/bin/awk -f

BEGIN{
	FPAT = "([^,]+)|(\"[^\"]+\")"
}

{
	for(i = 1; i <= 8; ++i){
		if(NR == 1 && i <= 7){
			printf("%s , ", $i)
		}
		if(i==8 && NR == 1){
			print("total , rank")
			}
	}
	if(NR !=1){
		total = 0
		for( i = 8; i<=32; ++i){
			total += $i	
		}
		cars[$1," , ",$2," , ",$3," , ",$4," , ",$5," , ",$6," , ",$7]=total
	}
}
END{
	PROCINFO["sorted_in"] = "@val_num_desc"
	count = 1
        for (f in cars){
		split(f,array," , ")
		for(i = 1; i <=7; ++i){
			printf("%s , ",array[i])
			if(i==7){
				print(cars[f]," , ",count)
			}
		}
		count += 1 
	}
}

