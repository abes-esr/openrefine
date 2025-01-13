# Openrefine

## Introduction 

Pour commencer, ceci est encore une autre image docker d'openrefine que l'on peut trouver sur le web. Cependant il s'agit du dépôt permettant de générer les images openrefine de l'ABES qui sont utilisées pour le projet Refabes-docker  [Refabes-Docker](https://github.com/abes-esr/refabes-docker) .

##Entrypoint

Cette image, contient un script entrypoint.sh permettant de variabiliser la mémoire qu'openrefine pourra utiliser : "REFINE_MEMORY"

- `export REFINE_MEMORY=${REFINE_MEMORY:='1030M'}` : Cette ligne, permet d'exporter la variable REFINE_MEMORY afin d'être utilisé dans un docker-compose.yml. Si aucune valeur n'est défini alors elle prendra une valeur par défaut de "1030M".

  
