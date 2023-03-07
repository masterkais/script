#!/bin/bash

# Chemin vers le script nexus
NEXUS_SCRIPT=/home/procoll/Téléchargements/nexus-3.47.1-01-unix/nexus-3.47.1-01/bin/nexus

# Démarrage de Nexus en arrière-plan
$NEXUS_SCRIPT start &

# Attendre que Nexus soit complètement démarré
echo "Veuillez patienter pendant que Nexus démarre..."
until curl --silent --fail http://localhost:8081/ > /dev/null; do
    sleep 1
done

# Affichage du message de confirmation
echo "Nexus a été démarré avec succès !"
i
