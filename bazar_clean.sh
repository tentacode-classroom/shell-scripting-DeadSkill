#!/bin/bash

echo "Rangement du bazar en cours..."
echo "-------"

# Suppression du précédent dossier de fixtures
rm -Rf ./fixtures

# Création des répertoires de fixtures
mkdir -p ./bazar_clean/divers \
    ./bazar_clean/images \
    ./bazar_clean/videos

# Création des sous répertoires


# Copie de l'image
cp ./fixtures/bazar/Bureau/secret/chaton.jpg ./fixtures/bazar/chaton.jpg \

# Copie des Fichiers textes
cp ./bazar/Bureau/secret/journal_intime.txt ./bazar_clean/divers \
    ./bazar/Bureau/secret/videos.mp4 ./bazar_clean/videos

