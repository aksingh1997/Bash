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

#taking input from linux
echo first input from console $1
echo second input from console $2

#declare an array, take away all the even numbers and print them
myList=(1 2 3 4 5 6)
evenList=()
for i in ${myList[@]}
do
	if [ $((i % 2)) -eq 0 ] ; then	#notice the gaps after square bracket and equation. Notice we dont use $i in (i % 2). It is extra wrapped by round bracket 
		evenList+=($i)
	fi
done

for number in ${evenList[@]}
do
	echo $number
done

