#!/bin/bash
echo UnderConstruction
if [ "$#" == "0" ]              #Checking if there are parameters.
then
echo -e "At Least one parameter required.\nType with -help to see Help." # Parameter check Point.
exit 1                                                                   # Exit If No Parameters.
fi
if [ $1 == "-help" ]					# Help Condition like a man page :)
then
echo -e "This is Help Section For NepPhoneList Script.\nsyntax : nepphonelist <values> <values> \nEg: nepphonelist 41 42"
exit 1							# Exit After Displaying Help
fi
	for(( i=0; i<=$#; i++ ))
		do 
		crunch 10 10 0123456789 -t 98$i@@@@@@ #>> Passlist.txt 
	done
exit 1
