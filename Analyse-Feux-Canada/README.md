# Analyse des Dynamiques des Feux de Forêt au Canada

Ce projet propose une analyse statistique approfondie des dynamiques des feux de forêt au Canada sur la période de 1990 à 2023. L'objectif est d'identifier les tendances annuelles, de comprendre la répartition des superficies brûlées et du nombre de feux par cause, et d'explorer la corrélation entre ces deux métriques clés. Les informations tirées de cette analyse sont cruciales pour la compréhension et la gestion des risques liés aux feux de forêt.

## Objectifs de l'Analyse

*   **Identification des Tendances** : Examiner l'évolution des superficies brûlées et du nombre de feux au fil du temps.
*   **Analyse des Causes** : Déterminer l'impact des différentes causes (activité humaine, foudre, autres) sur les feux de forêt.
*   **Évaluation des Corrélations** : Quantifier la relation entre le nombre de feux et les superficies qu'ils affectent.

## Structure du Projet

Le projet est organisé de la manière suivante :

*   `Analyse_Feux_Canada.Rmd` : Le script R Markdown principal qui contient l'intégralité du code source pour l'analyse, la génération des visualisations et la production du rapport.
*   `data/` : Ce répertoire contient les fichiers de données brutes utilisés pour l'analyse.
    *   `Nombre De Feux.csv` : Données sur le nombre de feux par cause et par année.
    *   `Superficies En Hectares.csv` : Données sur les superficies brûlées par cause et par année.
*   `output/` : Ce répertoire contiendra les figures et les tableaux générés par l'exécution de l'analyse.

## Outils et Technologies

*   **Langage de Programmation** : R
*   **Bibliothèques R** : `dplyr`, `ggplot2`, `tidyr`, `scales`, `knitr`, `kableExtra`, `readr`.

## Comment Exécuter l'Analyse

Pour reproduire l'analyse et générer le rapport :

1.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/dadjaratousarr854-eng/adjaratou-academic-projects.git
    ```
2.  **Naviguer vers le répertoire du projet** :
    ```bash
    cd adjaratou-academic-projects/Analyse-Feux-Canada
    ```
3.  **Installer les packages R nécessaires** (si ce n'est pas déjà fait) :
    ```R
    install.packages(c("dplyr", "ggplot2", "tidyr", "scales", "knitr", "kableExtra", "readr"))
    ```
4.  **Ouvrir le fichier R Markdown** (`Analyse_Feux_Canada.Rmd`) dans RStudio.
5.  **Générer le rapport** : Utiliser la fonction `Knit` de RStudio pour compiler le document en HTML, PDF ou Word. Les figures et tableaux seront sauvegardés dans le dossier `output/`.

## Résultats Clés

L'analyse produit des visualisations claires des tendances annuelles des feux de forêt, une répartition détaillée des superficies brûlées et du nombre de feux par cause, ainsi qu'une quantification de la corrélation entre ces phénomènes. Ces résultats sont présentés de manière exhaustive dans le rapport généré à partir du fichier R Markdown.
