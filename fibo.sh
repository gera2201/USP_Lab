echo "Enter value of N"
read n 
echo "Fibonacci Series"
num0=0
num1=1
echo "$num0"
while [ $n -gt 0 ]
do 
	
	fibo=$((num1+num0))
	echo "$num1"
	num0=$num1
	num1=$fibo
	n=$((n-1))
done
