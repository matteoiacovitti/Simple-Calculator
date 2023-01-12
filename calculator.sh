#!/bin/bash

## Calculator
## Matteo Iacovitti
## January 11 2023
## ver 1.0.0

# Ask for Operation
echo "What Opperation would you like to use?"
echo "(1)ADDITION | (2)SUBTRACTION | (3)MULTIPLICATION | (4)DIVISION"
read OPERATION

# Ask for fist and second digit
echo "Please enter first digit..."
read DIGIT1
echo "please enter second digit..."
read DIGIT2

# Check if digits are integers
if [[ "$DIGIT1" =~ ^[0-9]+$ ]] && [[ "$DIGIT2" =~ ^[0-9]+$ ]] ; then
  # Calcualte
  case $OPERATION in
  
    1)
      addanswer=$(($DIGIT1+$DIGIT2))
      echo ""

      echo "Answer is " $addanswer
      ;;

    2)
      subanswer=$(($DIGIT1-$DIGIT2))
      echo ""

      echo "Answer is " $subanswer
      ;;

    3)
      multianswer=$(($DIGIT1*$DIGIT2))
      echo ""

      echo "Answer is " $multianswer
      ;;

    4)
      divanswer=$(($DIGIT1/$DIGIT2))
      echo ""

      echo "Answer is " $divanswer
      ;;

    *)
      echo -n "Please pick from one of the 4 operations..."
      exit 1
      ;;

esac
else
  echo "Please use numbers only..."
  exit 1
fi



## End
exit 0
