#!/bin/bash

# Chemin vers le script nexus
JENKINS_SCRIPT=/home/procoll/Téléchargements
# Démarrage de Nexus en arrière-plan
java -jar $JENKINS_SCRIPT/jenkins.war &

# Attendre que Nexus soit complètement démarré
echo "Veuillez patienter pendant que JENKINS démarre..."
until curl --silent --fail http://localhost:8080/ > /dev/null; do
    sleep 1
done

# Affichage du message de confirmation
echo "Nexus a été démarré avec succès !"
i
