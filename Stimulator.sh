#! /bin/bash

echo "Flip coin simulator"
flipCoin=$((RANDOM%2))

if [ $flipCoin -eq 1 ]
then
    echo "TAIL"
else
    echo "HEAD"
fi
if [ $flipCoin -eq 1 ]
echo "number of times user want to flip the coin"
read flip
echo $flip
countHead=0
countTail=0
declare -A noOfCounts
for((i=0;i<flip;i++))
do
if [ $((RANDOM%2)) -eq 1 ]
then
    echo "TAIL"
((countHead++))
else
    echo "HEAD"
((countTail++))
fi
done
echo "head won="$countHead
echo "tail won="$countTail

