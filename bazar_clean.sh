#!/bin/bash

echo "Rangement du bazar en cours..."
echo "-------"

# Suppression du précédent dossier de fixtures
#rm -Rf ./

# Création des répertoires de fixtures
mkdir -p ./bazar_clean/divers \
    ./bazar_clean/images \
    ./bazar_clean/videos


# Copie des Fichiers textes
cp -r ./bazar/Bureau/secret/journal_intime.txt ./bazar_clean/divers \
    ./bazar/Bureau/secret/video.mp4 ./bazar_clean/videos

