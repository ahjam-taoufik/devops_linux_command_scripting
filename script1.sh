#!/bin/bash

# HOME variable 
VAR_PATH="$HOME"
echo "$VAR_PATH"
ls "$VAR_PATH" 


# USER variable
VAR_USER="$USER"
echo "$VAR_USER"


# USER hostname
VAR_HOSTNAME="$HOSTNAME"
echo "$VAR_HOSTNAME"

#for loop file in directory
for i in ./*.txt; do 
  echo "$i"
done


#-for loop with break
for i in {1..10}; do 
  if (($i < 5));then 
    echo "$i"
  else
    break;
  fi
done


#-for loop with continue
for i in {1..10}; do 
  if (($i == 5));then 
    continue ;
  else
    echo "$i"
  fi
done

#-while loop 
while ((++i <= 5)); do 
  echo "counter is at $i"
done 

#- create an array variable access by index
car =('BMW', 'TOYOTA','Mercedes','HONDA')
echo "${car[2]}"   #affiche Mercedes

#- create an associative array variable access by index

declare -A car

car[BMW]=i8
car[TOYOTA]=Civic
car[HONDA]=Benz

echo "${car[car[Honda]]}"

#- Accessing Array members with loop
 car=('bmw''toyota' 'honda')
 for i in "${car[@]}"; do 
  echo 
 done

#- date and differente formats

var=$(date)
echo "$var"

var2=$(date+%F)
echo "$var2"

var3=$(date+%D)
echo "$var3"

var4=$(date+%Y)
echo "$var4"

#- print seconds elapsed for block of code

timeformat="It takes %R seconds to complete this task. . ."
time {
    for i in 1 2 3 ; do 
      echo "writing code in curly braces to calculatetime "
    done
}

# read text from file and print it to screen
file='file.txt'
n=1
while read line; do
  echo "Line-$n : $line"
  n=$((n+1))
done < $file


# read text from file using if condition
file='file.txt'
n=1
while read line; do
  echo "Line-$n : $line"
  n=$((n+1))
  if ((n>2)); then
     break;
  fi
done < $file




