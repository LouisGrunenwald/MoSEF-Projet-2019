#!/bin/bash
hoy=$(date +%d/%m/%Y)
hora=$(date +%H:%M)
temperature=froid
echo "Bonjour $USER, on est actuellemnt le : $hoy et il est : $hora . Il fait $temperature, il est donc temps de partir en vacs mais pas avant cet exercice "
read -p "A quel répertoir souhaitez vous accéder ? " dossier
demande_fichier=$(locate -l 1 $dossier)

echo "Voici le répertoire : $dossier"

if [ -f $(locate "$1") ] || [ -f $dossier/$1 ]
then 

	#echo "$demande_fichier"
	var1=$(find $demande_fichier -name "$1")
	#echo "$var1"
	var2=$(find $demande_fichier/ -name "$1" -exec grep -il "$2" {} \;)
	#grep -Rli --include="$1" "$2" fonctionne aussi
	echo "$var2"

else 
	echo "Ceci est un message d'erreur: le premier argument doit nécessairement être un fichier. Merci de recommencer avec un argument adapté."
fi
