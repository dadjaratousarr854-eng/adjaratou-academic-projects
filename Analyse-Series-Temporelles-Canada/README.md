# Analyse des Séries Temporelles : Taux d'Emploi et de Chômage au Canada

Ce projet propose une analyse approfondie des séries temporelles portant sur les indicateurs du marché du travail au Canada, spécifiquement le **taux d'emploi** et le **taux de chômage**, sur la période allant de janvier 2020 à décembre 2024. L'étude s'articule autour de la vérification de la stationnarité, de l'application de techniques de lissage et de la caractérisation statistique des processus sous-jacents. L'objectif est de comprendre les dynamiques post-pandémiques du marché du travail canadien et de préparer le terrain pour une modélisation prédictive.

## Objectifs de l'Analyse

*   **Vérification de la Stationnarité** : Appliquer des tests statistiques pour évaluer la stationnarité des séries temporelles.
*   **Techniques de Lissage** : Utiliser des méthodes de moyenne mobile et de lissage exponentiel pour identifier les tendances sous-jacentes.
*   **Caractérisation Statistique** : Analyser les fonctions d'autocorrélation et de corrélation partielle pour identifier la structure des séries.

## Structure du Projet

Le projet est organisé de la manière suivante :

*   `Analyse_Statistique_Series_Temporelles.Rmd` : Le script R Markdown principal qui contient l'intégralité du code source pour l'analyse, la génération des visualisations et la production du rapport.
*   `data/` : Ce répertoire contient les fichiers de données brutes utilisés pour l'analyse.
    *   `taux_chomage.csv` : Données sur le taux de chômage mensuel au Canada.
    *   `taux_emploi.csv` : Données sur le taux d'emploi mensuel au Canada.
*   `output/` : Ce répertoire contiendra les figures et les tableaux générés par l'exécution de l'analyse.

## Outils et Technologies

*   **Langage de Programmation** : R
*   **Bibliothèques R** : `forecast`, `tseries`, `ggplot2`, `TTR`, `dplyr`, `tidyr`, `tibble`, `zoo`, `gridExtra`.

## Comment Exécuter l'Analyse

Pour reproduire l'analyse et générer le rapport :

1.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/dadjaratousarr854-eng/adjaratou-academic-projects.git
    ```
2.  **Naviguer vers le répertoire du projet** :
    ```bash
    cd adjaratou-academic-projects/Analyse-Series-Temporelles-Canada
    ```
3.  **Installer les packages R nécessaires** (si ce n'est pas déjà fait) :
    ```R
    install.packages(c("forecast", "tseries", "ggplot2", "TTR", "dplyr", "tidyr", "tibble", "zoo", "gridExtra"))
    ```
4.  **Ouvrir le fichier R Markdown** (`Analyse_Statistique_Series_Temporelles.Rmd`) dans RStudio.
5.  **Générer le rapport** : Utiliser la fonction `Knit` de RStudio pour compiler le document en HTML, PDF ou Word. Les figures et tableaux seront sauvegardés dans le dossier `output/`.

## Résultats Clés

Cette analyse démontre que les taux d'emploi et de chômage au Canada, bien que présentant des tendances et une saisonnalité, peuvent être stationnarisés efficacement par une différenciation d'ordre 1. Les séries transformées montrent des caractéristiques de bruit blanc, ouvrant la voie à des modélisations prédictives plus avancées, telles que les modèles ARIMA. Ces résultats fournissent une base solide pour des études économétriques ultérieures sur le marché du travail canadien.
