n=1
pass=0
fail=0
while [ $n -lt 7 ]
do
	echo "Enter CIE marks of subject $n"
	read cie
	echo "Enter SEE marks of subject $n"
	read see
	if [ $cie -lt 20 -o $see -lt 40 ]
	then 
	fail=$((fail+1))
	echo "Grade of subject $n = F"
	else 
	pass=$((pass+1))
	see=$((see/2))
	grade=$((cie+see))
	if [ $grade -ge 90 ]
	then echo "Grade os subject $n = S"
	elif [ $grade -ge 80 -a $grade -lt 90 ]
	then echo "Grade os subject $n = A"
	elif [ $grade -ge 70 -a $grade -lt 80 ]
	then echo "Grade os subject $n = B"
	elif [ $grade -ge 60 -a $grade -lt 70 ]
	then echo "Grade os subject $n = C"
	elif [ $grade -ge 50 -a $grade -lt 60 ]
	then echo "Grade os subject $n = D"
	elif [ $grade -ge 40 -a $grade -lt 50 ]
	then echo "Grade os subject $n = E"
	fi
	fi
	n=$((n+1))
done 
echo "Number of Pass Subjects = $pass"
echo "Number of Fail Subjects = $fail"
