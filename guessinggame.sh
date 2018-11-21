# !/usr/bin/env bash
# File: guessinggame.sh
# Author: David Hsu
# Course: The Unix Workbench (Peer-graded Assignment: Bash, Make, Git, and GitHub)
# Assignment: Davidius Number Guessing Game

function check_scoreboard {
  echo $'=================================================================================='
  echo $'How many files are there in the current directory? (Enter an Integer Number)'
  echo $'=================================================================================='
  read davidresponse
  
  numfiles=$(ls | wc -l)
  
  while [[ $davidresponse -ne $numfiles ]]
  do
    echo $'\n======================================================='
    echo $'############ INCORRECT, TRY AGAIN! ####################'
    echo $'======================================================='
    
    if [[ $davidresponse -gt $numfiles ]]
    then
      echo $'Guess Number is too high; try shooting lower.\n'
      echo $'=================================================================================='
      echo $'How many files are there in the current directory? (Enter an Integer Number)'
      echo $'=================================================================================='
      read davidresponse
    elif [[ $davidresponse -lt $numfiles ]]
    then
      echo $'Guess Number is too low; try shooting higher.\n'
      echo $'=================================================================================='
      echo $'How many files are there in the current directory? (Enter an Integer Number)'
      echo $'=================================================================================='
      read davidresponse
    fi
  done

  echo $'\n======================================================='
  echo $'##################### CORRECT! ########################'
  echo $'======================================================='
  echo "Guess Number of Files:	       $davidresponse"
  echo "Actual Number of Files: $numfiles"
  echo $'--------------------------------------'
  echo $'Congrats! You have won the game! :-)\n'
}

#============= Main body of script starts here =============
echo $'######################################################\n########## Davemeister Number Guessing Game ##########\n######################################################\n'
check_scoreboard
