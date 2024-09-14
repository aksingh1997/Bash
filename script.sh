#For loop
for i in {1..5}
do
	echo $i
done

#while loop 
while read line
do
	echo $line >> output.txt		
done < input.txt

#function with input param
function sign {
	if [ $1 -gt 0 ]; then
		echo $1 is positive
	elif [ $1 -lt 0 ]; then
		echo $1 is negative
	else
		echo $1 is zero
	fi
}

# function call
sign 5
sign -3
sign 0

#taking input from command line
echo first input from console $1
echo second input from console $2



