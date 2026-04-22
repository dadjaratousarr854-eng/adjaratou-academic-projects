# Évaluation de l'Impact de l'IA sur le Dépistage du Cancer du Sein

Ce projet évalue l'impact de l'intégration de l'intelligence artificielle (IA) dans les programmes de dépistage du cancer du sein. En analysant des données réelles, nous comparons les performances de dépistage avec et sans assistance de l'IA, en nous concentrant sur les taux de détection du cancer et les taux de rappel. L'objectif est de fournir des preuves empiriques sur l'efficacité de l'IA en mammographie et d'éclairer les décisions cliniques.

## Objectifs de l'Analyse

*   **Quantifier l'Impact de l'IA** : Mesurer l'influence de l'IA sur les taux de détection du cancer et les taux de rappel.
*   **Modélisation Statistique** : Utiliser la régression logistique pour évaluer l'association entre l'utilisation de l'IA et les résultats de dépistage.
*   **Visualisation des Performances** : Présenter clairement les différences de performance entre les groupes avec et sans IA.

## Structure du Projet

Le projet est organisé de la manière suivante :

*   `Analyse_IA_Mammographie.Rmd` : Le script R Markdown principal qui contient l'intégralité du code source pour l'analyse, la génération des visualisations et la production du rapport.
*   `data/` : Ce répertoire contient le fichier de données brutes `praim.csv` utilisé pour l'analyse.
*   `output/` : Ce répertoire contiendra les figures et les tableaux générés par l'exécution de l'analyse.

## Outils et Technologies

*   **Langage de Programmation** : R
*   **Bibliothèques R** : `tidyverse`, `broom`, `ggplot2`.

## Comment Exécuter l'Analyse

Pour reproduire l'analyse et générer le rapport :

1.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/dadjaratousarr854-eng/adjaratou-academic-projects.git
    ```
2.  **Naviguer vers le répertoire du projet** :
    ```bash
    cd adjaratou-academic-projects/IA-Mammographie-Evaluation
    ```
3.  **Installer les packages R nécessaires** (si ce n'est pas déjà fait) :
    ```R
    install.packages(c("tidyverse", "broom", "ggplot2"))
    ```
4.  **Ouvrir le fichier R Markdown** (`Analyse_IA_Mammographie.Rmd`) dans RStudio.
5.  **Générer le rapport** : Utiliser la fonction `Knit` de RStudio pour compiler le document en HTML, PDF ou Word. Les figures et tableaux seront sauvegardés dans le dossier `output/`.

## Résultats Clés

Cette analyse fournit des informations précieuses sur la performance du dépistage du cancer du sein assisté par l'IA. Les résultats des modèles logistiques et les visualisations des taux de détection et de rappel permettent de mieux comprendre l'efficacité de ces systèmes dans un contexte réel. Ces découvertes sont essentielles pour l'amélioration continue des pratiques de dépistage et la prise de décision clinique.
