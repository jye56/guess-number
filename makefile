readme.txt: guessinggame.sh
	touch readme.txt
	echo "This is an interactive program for guessing he number of files in a directory" > readme.txt
	date >> readme.txt
	echo "the number of the lines of the program is:" >> readme.txt
	cat guessinggame.sh | wc -l >> readme.txt
	
