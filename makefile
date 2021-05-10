# producing README.md

current_run := $(shell date +"%Y-%m-%d %H:%M:%S")
nr_of_lines := $(shell cat guessinggame.sh | wc -l)

README.md: FORCE
	echo "Bash Game" > README.md
	echo "" >> README.md
	echo "Date of last run: $(current_run)" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh: $(nr_of_lines)" >> README.md

FORCE:
