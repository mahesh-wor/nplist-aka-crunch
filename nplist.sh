#!/bin/bash
#################
file=passlist.txt
bar="---------------------------------------"
rm $file 2>/dev/null;
if [ "$#" == "0" ]              #Checking if there are parameters.
then
echo -e "At Least one parameter required.\nType with -help to see Help." # Parameter check Point.
exit 1                                                                   # Exit If No Parameters.
fi
if [ $1 == "-help" ]					# Help Condition like a man page :)
then
echo -e "This is Help Section For nplist Script.\nsyntax : nplist <values> <values> \nEg: nepphonelist 41 42"
exit 1							# Exit After Displaying Help
fi
	for i in $*
		do
		echo;
		echo Creating List with 98-$i-xxxxxx format
		crunch 10 10 0123456789 -t 98$i@@@@@@ >> $file 2>/dev/null
	done
		echo;
		echo Phonelist Saved to $PWD/$file
		echo;
		echo $bar 
exit 1
