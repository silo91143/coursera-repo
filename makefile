README.md:
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "Date et heure d'exécution de make :" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Nombre de lignes de code dans guessinggame.sh :" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md
