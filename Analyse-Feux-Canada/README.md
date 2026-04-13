# Analyse des Dynamiques des Feux de Forêt au Canada (1990-2023)

Ce projet R Markdown réalise une analyse statistique approfondie des superficies brûlées par les feux de forêt au Canada sur la période allant de 1990 à 2023. L'objectif principal est de visualiser les tendances annuelles, d'identifier les causes prédominantes des feux et d'évaluer leur impact sur le territoire canadien durant cette période.

## Objectifs de l'Étude

L'étude vise à :

*   **Corrélation** : Examiner la relation statistique entre le nombre de feux et la superficie totale brûlée.

*   **Extraction et Traitement des Données** : Procéder à l'extraction et à l'agrégation des données de superficies brûlées à partir de sources géospatiales (shapefile) et tabulaires (Excel), en les structurant par année et par cause.
*   **Analyse des Tendances Temporelles** : Représenter graphiquement l'évolution annuelle de la superficie totale brûlée au Canada et identifier les tendances linéaires significatives sur la période étudiée.
*   **Caractérisation des Causes des Feux** : Déterminer la répartition des superficies brûlées en fonction des causes (activité humaine, foudre, autres causes naturelles ou indéterminées) et présenter ces résultats sous des formats graphiques et tabulaires clairs.

## Résultats Clés

### Tendance Annuelle
L'analyse montre une forte variabilité interannuelle des superficies brûlées, avec des pics historiques notables.

![Tendance Annuelle](./images/tendance_annuelle.png)

### Répartition par Cause
La foudre demeure la cause principale des grandes superficies brûlées au Canada, malgré la fréquence élevée des feux d'origine humaine.

![Répartition par Cause](./fig_superficie_par_cause_1990_2023.png)

## Méthodologie

Le projet s'appuie sur le langage de programmation R et utilise une suite de bibliothèques spécialisées pour le traitement, l'analyse statistique et la visualisation des données :

1.  **Analyse de Corrélation** : Les coefficients de corrélation de Pearson et de Spearman sont calculés pour évaluer la relation entre la superficie brûlée et le nombre de feux.

1.  **Chargement et Préparation des Données** : Les données brutes sont importées à partir d'un shapefile (`.shp`) et d'un fichier Excel (`.xlsx`). Elles sont ensuite filtrées pour la période 1990-2023 et les superficies sont converties en kilomètres carrés pour une meilleure interprétation.
2.  **Analyse de la Superficie Totale Brûlée** : Un graphique linéaire est généré pour illustrer la superficie totale brûlée chaque année, complété par une ligne de régression linéaire pour mettre en évidence les tendances à long terme.
3.  **Analyse par Catégorie de Cause** : Les données sont regroupées par année et par catégorie de cause. Un graphique à barres empilées est utilisé pour visualiser la contribution proportionnelle de chaque cause à la superficie totale brûlée. Un tableau récapitulatif des pourcentages de superficie brûlée par cause est également produit.

## Contenu du Répertoire

*   `Analyse_Feux_Canada.Rmd` : Le script R Markdown principal, intégrant l'ensemble du code source pour l'analyse, la génération des graphiques et des tableaux.
*   `images/` : Dossier contenant les visualisations graphiques générées.
*   `NBAC_totaux_annuels_1972_2024.csv` : Fichier CSV résultant de l'agrégation des totaux annuels des superficies brûlées.
*   `fig_correlation_feux_superficie.png` : Graphique de corrélation entre le nombre de feux et la superficie brûlée.

**Note Importante** : Les fichiers de données sources originaux (`.shp` et `.xlsx`) ne sont pas inclus dans ce répertoire. Il est nécessaire de les obtenir séparément ou de spécifier leurs chemins d'accès corrects pour exécuter l'analyse.

## Comment Exécuter le Code

Pour reproduire l'analyse, vous aurez besoin de R et des packages suivants :

```R
install.packages(c("dplyr", "ggplot2", "tidyr", "scales", "knitr", "kableExtra", "readr"))
```

Une fois les packages installés, ouvrez le fichier `Analyse_Feux_Canada.Rmd` dans RStudio et exécutez les chunks de code séquentiellement.

## Résultats Clés

Les résultats de cette analyse sont détaillés dans le `Rapport_Analyse_Feux.md` et incluent des observations sur les tendances à long terme, l'importance relative des différentes causes de feux, et la force de la corrélation entre le nombre de feux et la superficie brûlée. Les visualisations générées offrent un aperçu clair de ces dynamiques.

## Outils Logiciels

*   **Langage de Programmation** : R
*   **Bibliothèques** : `sf`, `dplyr`, `readr`, `purrr`, `readxl`, `ggplot2`, `tidyr`, `scales`, `knitr`, `kableExtra`.
