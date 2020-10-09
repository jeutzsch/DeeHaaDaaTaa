#!/bin/bash

#This is an example bash script.
#It asks for user input, 
#gets the day of the week 
#and outputs a statement based on that

#find out user's status
echo "If you are a student, type 1; if you are a worker, type 2";
#save the answer to a variable
read status

echo "
Thanks for your answer, $USER."

#set verb to use depending on status
if [ $status == '1' ]
	then verb='study';
	elif [ $status == '2' ]
	  then verb='work';
	else verb='hang out';
fi

#save current day to a variable:
toDAY=`date +"%A"`

#print the day:
echo "Today is ${toDAY}.";

#if-then-else:
if [ $toDAY == 'Sunday' -o $toDAY == 'Saturday' ]
	then echo "It's the weekend!!";
	else echo "You have to $verb today.";
fi;





