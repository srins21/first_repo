function compare_guess {
	if [[ $2 -gt $1 ]]
		then
			echo "Your Guessed number :  $2 is Too High"
	else
			echo "Your Guessed number :  $2 is Too Low"
	fi
}

function prompt_for_guess {
	echo Please Guess How many files are present in current directory, Please press enter after typing number
	read guessed_num
	echo guessed_num
}
	

#Initialising guess_num to 0	
guessed_num=0	

# First Time Prompt
prompt_for_guess

# Finding Num Of Files
num_files=$(ls | wc -l)	#

while [[ $guessed_num -ne num_files ]]
do
	compare_guess $num_files $guessed_num
	prompt_for_guess
done

echo "Congratulations You Guessed It Right !!!!"