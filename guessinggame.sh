#!/bin/bash

# Fonction qui compte les fichiers dans le répertoire courant
count_files() {
    ls -1 | wc -l
}

# Stocke le nombre correct de fichiers
correct=$(count_files)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

guess=0

# Boucle jusqu'à ce que la bonne réponse soit trouvée
while [[ $guess -ne $correct ]]
do
    read guess

    if [[ $guess -lt $correct ]]
    then
        echo "Trop bas ! Essayez encore :"
    elif [[ $guess -gt $correct ]]
    then
        echo "Trop haut ! Essayez encore :"
    else
        echo "🎉 Félicitations ! Vous avez deviné le bon nombre de fichiers."
    fi
done
