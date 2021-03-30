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

declare -A noOfCounts
for((i=0;i<flip;i++))
target_count=21
minimum_difference=0
heads_count=0
tails_count=0
flips_count=0
while [ 1 ]
do
if [ $((RANDOM%2)) -eq 1 ]
toss=$(( RANDOM % 2  ))
if(( toss == 0 ))
then
((countHead++))
echo "Heads"
(( heads_count++ ))

else
((countTail++))
echo "Tails"
(( tails_count++ ))

fi


diff=$(( heads_count - tails_count ))
if [[ $heads_count -eq $target_count  ||  $tails_count -eq $target_count ]] && [ $diff -eq 0 ];then
echo "Tie "
break

elif [ $heads_count -eq $target_count ] && [ $diff -gt $minimum_difference ];then
        echo "Heads won by $diff"
        break
elif [ $tails_count -eq $target_count ] && [ $diff -gt $minimum_difference ];then
         echo "Tails won by ${diff} points"
         break
fi

done
echo "head won="$countHead
echo "tail won="$countTai
