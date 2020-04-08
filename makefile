all: README.md

README.md:
	touch README.md
	echo "The Unix Workbench Project" > README.md
	date -R >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
