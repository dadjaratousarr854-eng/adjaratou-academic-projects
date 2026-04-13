# Analyse des Séries Temporelles Appliquée au Marché du Travail Canadien

Ce projet propose une étude approfondie de l'évolution des taux d'emploi et de chômage au Canada sur la période 2020-2024. L'objectif est de fournir une analyse statistique rigoureuse des indicateurs du marché du travail canadien, en se concentrant sur la stationnarité des séries temporelles et la caractérisation de leurs processus stochastiques sous-jacents, afin de dégager des insights pertinents sur la dynamique du marché du travail.

## Objectifs de l'Étude

L'étude vise à :

*   **Analyser les Tendances** : Examiner les évolutions des taux d'emploi et de chômage au Canada entre 2020 et 2024.
*   **Évaluer la Stationnarité** : Appliquer des tests statistiques pour déterminer la stationnarité des séries temporelles.
*   **Caractériser les Processus Stochastiques** : Identifier les modèles sous-jacents qui décrivent le comportement des séries.

## Méthodologie

La méthodologie adoptée comprend les étapes suivantes :

1.  **Analyse Descriptive** : Calcul des statistiques sommaires et visualisation initiale des données pour identifier les tendances et les saisonnalités.
2.  **Filtrage et Lissage** : Application de moyennes mobiles sur 12 mois et de lissage exponentiel simple (avec $\alpha = 0.2, 0.3$) pour dégager les composantes de tendance.
3.  **Tests de Stationnarité** :
    *   Différenciation d'ordre un pour stabiliser la moyenne.
    *   Tests d'Augmented Dickey-Fuller (ADF) et de Kwiatkowski-Phillips-Schmidt-Shin (KPSS) pour confirmer la stationnarité.
4.  **Analyse de Corrélation** : Étude des fonctions d'autocorrélation (ACF) et des tests de bruit blanc de Ljung-Box pour évaluer la dépendance temporelle.

## Résultats Clés

L'analyse révèle que les données brutes d'emploi et de chômage présentent des tendances et une saisonnalité prononcées. Cependant, une différenciation d'ordre un permet de stationnariser efficacement ces séries, les rendant ainsi aptes à des modélisations prédictives ultérieures, telles que les modèles ARIMA. Ces résultats sont cruciaux pour la compréhension des mécanismes sous-jacents et pour l'élaboration de prévisions fiables.

## Contenu du Répertoire

*   `Analyse_Statistique_Series_Temporelles.Rmd` : Le fichier R Markdown principal contenant l'analyse complète, le code et les visualisations.
*   `taux_emploi.csv` : Données mensuelles sur le taux d'emploi.
*   `taux_chomage.csv` : Données mensuelles sur le taux de chômage.

## Outils Logiciels

*   **Langage de Programmation** : R
*   **Bibliothèques** : `forecast`, `tseries`, `ggplot2`.
