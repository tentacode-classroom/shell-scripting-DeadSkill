#!/bin/bash

# Déclaration des Variables
CURRENT_DIRECTORY=dirname $0
BAZAR_DIRECTORY=$CURRENT_DIRECTORY/bazar
CLEAN_DIRECTORY=$CURRENT_DIRECTORY/bazar_clean

echo "Lancement du super nettoyeur"

# Supprime les anciens répertoires
#rm -Rf $BAZAR_DIRECTORY
rm -Rf $CLEAN_DIRECTORY

# Crée les nouveaux répertoires
#mkdir -p $BAZAR_DIRECTORY/Bureau/secret \
#    $BAZAR_DIRECTORY/Download

# Crée les fichiers
#touch $BAZAR_DIRECTORY/Bureau/image.jpg \
#    $BAZAR_DIRECTORY/Bureau/secret/journal_intime.txt \
#    $BAZAR_DIRECTORY/Download/fichier.pdf \
#    $BAZAR_DIRECTORY/Download/girafe.jpg

# Crée les nouveaux répertoires clean
mkdir -p $CLEAN_DIRECTORY/divers \
    $CLEAN_DIRECTORY/images \
    $CLEAN_DIRECTORY/videos

# Copie les fichiers vers le nouveau répertoire
FILES=`find $BAZAR_DIRECTORY -type f`

for FILE in $FILES
    do
        file $FILE | grep -q "image data"
        if [ $? = 0 ]
        then
            cp $FILE $CLEAN_DIRECTORY/images
        else
            file $FILE | grep -q "Media"
                    if [ $? = 0 ]
                    then
                            cp $FILE $CLEAN_DIRECTORY/videos
            else
                cp $FILE $CLEAN_DIRECTORY/divers
            fi
        fi
	
done

echo Fin du super nettoyage