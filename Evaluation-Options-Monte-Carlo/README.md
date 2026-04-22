# Évaluation d'Options par Méthodes de Monte Carlo

Ce projet explore l'évaluation d'options financières de type européen en utilisant la méthode de Monte Carlo, complétée par diverses techniques de réduction de variance. L'objectif est de démontrer l'efficacité de ces techniques pour améliorer la précision et la convergence des estimations de prix d'options, un aspect crucial en finance quantitative.

## Objectifs du Projet

*   **Implémentation de Monte Carlo** : Développer un simulateur de base pour l'évaluation d'options européennes.
*   **Réduction de Variance** : Appliquer et comparer des techniques telles que les variables antithétiques, les variables de contrôle et l'échantillonnage stratifié.
*   **Analyse Comparative** : Évaluer l'impact de chaque technique sur la variance des estimateurs, les intervalles de confiance et l'efficacité globale.

## Structure du Projet

Le projet est organisé de la manière suivante :

*   `Monte_Carlo_Option_Pricing.R` : Le script R principal contenant l'implémentation des modèles de Monte Carlo et des techniques de réduction de variance.
*   `output/` : Ce répertoire contiendra les figures générées, illustrant les distributions des prix simulés et les relations clés.

## Outils et Technologies

*   **Langage de Programmation** : R
*   **Bibliothèques R** : `ggplot2`, `dplyr`, `tidyr`, `stats`, `readxl`.

## Comment Exécuter l'Analyse

Pour reproduire l'analyse et générer les résultats :

1.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/dadjaratousarr854-eng/adjaratou-academic-projects.git
    ```
2.  **Naviguer vers le répertoire du projet** :
    ```bash
    cd adjaratou-academic-projects/Evaluation-Options-Monte-Carlo
    ```
3.  **Installer les packages R nécessaires** (si ce n'est pas déjà fait) :
    ```R
    install.packages(c("ggplot2", "dplyr", "tidyr", "stats", "readxl"))
    ```
4.  **Exécuter le script R** :
    ```bash
    Rscript Monte_Carlo_Option_Pricing.R
    ```
    Les résultats numériques seront affichés dans la console et les graphiques seront sauvegardés dans le dossier `output/`.

## Résultats Clés

L'analyse démontre que les techniques de réduction de variance améliorent significativement la précision des estimations de Monte Carlo pour l'évaluation d'options. Les variables antithétiques et les variables de contrôle, en particulier, réduisent la variance des estimateurs, permettant d'obtenir des résultats plus fiables avec un nombre de simulations réduit. Ces méthodes sont essentielles pour une modélisation financière efficace et robuste.
