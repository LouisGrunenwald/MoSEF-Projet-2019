#!/bin/bash
hoy=$(date +%d/%m/%Y)
hora=$(date +%H:%M)
temperature=froid
echo "Bonjour $USER, on est actuellemnt le : $hoy et il est : $hora . Il fait $temperature, il est donc temps de partir en vacs mais pas avant cet exercice "
read -p "A quel répertoir souhaitez vous accéder ? " dossier
demande_fichier=$(locate -l 1 $dossier)

echo "Voici le répertoire : $dossier"
echo "$demande_fichier"
find $demande_fichier -name "$1"
