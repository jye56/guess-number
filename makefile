README.md: guessinggame.sh
	touch README.md
	echo "##This is an interactive program for guessing he number of files in a directory" > README.md
	date >> README.md
	echo "the number of the lines of the program is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	
