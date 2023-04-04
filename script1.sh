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

#basic read command
 echo "Please enter 3 words followed by ENTER: "
 read first middle final
 echo "Hello $first $middle $final"
 
 #read command into array
echo "Give input to enter into array"
read -a arrayVar

echo "The given input array member are as follows: "
for i in ${arrayVar[@]}; do
  echo "$i"
done

#read command with delimiter
echo "Enter car name and its model:"
IFS='|' read car model <<< 'BMW | i8'
echo "Hello, car is $car and model is $model"

#read command with timeout
date
read -t 4 -p "Press Enter Key or Wait for 4 seconds"
date 


#menu option with select command
PS3= 'Please choose a car company'

cars=("bmw" "toyota" "honda" "quit")
select car in "${cars[@]}"
do 
  case $car in
     "bmw")
        echo "You chose bmw"
        ;;
      "toyota"
        echo "You chose toyota"
        ;;
      "honda"
        echo "You chose honda"
        ;;
      "Quit"
         break
        ;;
      *) echo "invalid option $REPLY";;
       esac
done

# menu option with select command from array variable
PS3='Select any of the car company: '

menu_from_array ()

{

  select item; do

  if [ 1 -le "$REPLY" ] && [ "$REPLY" -le $# ]; then

     echo "The selected car company is $item"

     break;

  else

     echo "Wrong selection: Select any number from 1-$#"

  fi

  done
}
cars=('bmw' 'toyota' 'honda')
menu_from_array "${cars[@]}"


#split string by space

line="this is the example line"
for word in $line; do
  echo "$word"
done


#split string by custom delimiter

line="thisis!a!line!which!would!have!spaces"
delimiter=!
s=$line$delimiter
array=();
while [[ $s ]]; do
  echo "${s%%"$delimiter"*}"
  s=${s#*"$delimiter"}
done;

#split string into array variable
 line="this,is,a,line,which,would,have,spaces"
 IFS=','
 read -ra ADDR <<< "$line"
 for i in "${ADDR[@]}"; do
   echo "$i"
 done
 IFS=' '
 
 
#read password from stdin without printing it
echo -n "Type a Password: "
read -s password
echo " "
echo "Thanks for putting in your password which is : $password"

#command with pipe
cat file1.txt | sort
cat file1.txt | wc -w  #count of line  

#read every line from file and copy to another file with pipe
cat car.txt | while read x ; do
echo $x ; done | cat > new.txt 

#simple function
function func()
{
 echo "hello, this is a text ."
}

func
func


#function return a string
function func()
{
  retstr='hello, this is a text '
}
retstr='bash is excellent'
echo $retstr

func
echo $retstr

#function takes params
function func()
{
 sum=$(($1 + $2))
  echo "sum is : $sum"
}
func 5 4


#indexed arrays with declare

declare -a my_array
my_array=(linux ubuntu debian)
echo ${my_array[0]}
echo ${my_array[@]}


#associative arrays with declare
declare -A assoc_Array
assoc_Array=([website]=Youtube [channel]=Debian)

echo ${assoc_Array[website]}
echo ${assoc_Array[channel]}


# xargs
ls *file* | xargs wc


#reference home directory with tilde
echo ~


#substring expansion for printing part of string
var="this is the part of para"
echo $var
echo "${var:0:6}"
 
# check if file executable, set if not
file="file1"

if[[ -x "$file" ]]; then
  echo "File is executable"
else
  echo "File is not executable"
  chmod +x $file
  echo "File is executable now"
fi

# check if file is owned by user, set if not
file="file1.txt"
if [[ -O "$file" ]]; then
  echo "File is owned by the currently login user"
  sudo chown timitar $file
else
  echo "File is not owned by the currently login user"
  sudo chown timitar $file
  echo "File is owned by the . . ."
fi
 
 # wc to count lines in a file
  echo "The number of lines in the file are : "
  wc -l file1.txt
  
  # wc to count lines in a file
  echo "The number of caracters in the file are : "
  wc -c file1.txt

 #head command with default args
  file="file.txt"
  sudo head $file
  
  
  #head command to print first 2 lines
  file="file.txt"
  sudo head -n 2 $file
  
  #tail command with default args
  file="file.txt"
  sudo tail $file
  
  #tail command to print last 2 lines
  file="file.txt"
  sudo tail -n 2 $file

