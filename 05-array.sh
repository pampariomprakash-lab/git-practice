#/bin/bash

FRUITS=("APPLE" "KIWI" "MANGO")

echo "First fruit is ${FRUITS[0]}"
echo "Second fruit is ${FRUITS[1]}"
echo "First fruit is ${FRUITS[2]}"

echo "All fruits together are $FRUITS"
 
echo "what fruit do you want"
read -s FRUITS

echo "thank you for chosing the $FRUITS[2]"

