#!/bin/bash
#run this script from 'workspace' folder

#adding pre code to student code
cat .guides/$1/R/$1_pre.r $1_student.r > .guides/$1/R/$1.r

#moving into R package
cd .guides/$1

#running test and saving output to file
R --quiet --slave -e 'devtools::test()' > output

#print summary of test
grep -h "OK:" output
RIGHT=$(grep 'OK:' output | sed 's/^.*: //') #saving number for math
grep -h "Failed:" output
WRONG=$(grep 'Failed:' output | sed 's/^.*: //') #saving number for math
grep -h "Warnings:" output
grep -h "Skipped:" output

#print failed test names
echo "\nFailed Tests: "
grep -h "error" output

#doing math to calculate partial points
TOTAL=$2 #total number of points for assessment
TESTS=$(($RIGHT+$WRONG)) #number of tests
POINTS=$(($TOTAL*$RIGHT/$TESTS)) #calculating proportional number of points
echo "Points Received: $POINTS"

#sending score to Codio
curl -s "$CODIO_PARTIAL_POINTS_URL&points=${POINTS}" > /dev/null