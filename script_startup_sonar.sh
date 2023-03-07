#!/bin/bash

# Chemin vers le script nexus
SONAR_SCRIPT=/home/procoll/Téléchargements/sonarqube-9.8.0.63668/bin/linux-x86-64/sonar.sh

# Démarrage de Nexus en arrière-plan
$SONAR_SCRIPT start &

# Attendre que Nexus soit complètement démarré
echo "Veuillez patienter pendant que SONAR démarre..."
until curl --silent --fail http://localhost:9000/ > /dev/null; do
    sleep 1
done

# Affichage du message de confirmation
echo "Nexus a été démarré avec succès !"
i
