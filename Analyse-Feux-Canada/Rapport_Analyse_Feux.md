# Analyse critique de la couverture médiatique des feux de forêt au Canada (1990–2023)

## 1. Introduction

L’été 2023 a profondément marqué le Canada par l’ampleur des feux de forêt qui ont ravagé plusieurs provinces. Ces incendies sans précédent ont alimenté un débat national sur leurs causes et sur leur lien avec les changements climatiques. Dans les médias, certains chroniqueurs ont remis en question la validité de ces interprétations. Deux textes d’opinion en particulier se sont distingués :

*   **Randall Denley** (Ottawa Citizen, 2023) affirme que les feux de forêt tendent à diminuer depuis les années 1990.
*   **Chris Sankey** (National Post, 2023) soutient que les feux de forêt sont principalement causés par l’activité humaine et non par des facteurs climatiques.

L’objectif de ce rapport est d’évaluer de manière rigoureuse ces affirmations à partir de données officielles canadiennes et d’une analyse statistique complète.

## 2. Revue de la littérature

Les feux de forêt canadiens font l’objet d’un suivi systématique depuis plusieurs décennies. Selon Stocks et al. (2002), les grands feux (plus de 200 hectares) représentent une part disproportionnée de la superficie brûlée et sont majoritairement causés par la foudre. De leur côté, Hanes et al. (2019) observent une augmentation de la superficie totale brûlée au Canada au cours des cinquante dernières années, en lien avec des saisons plus longues et plus sèches attribuables au réchauffement climatique.

## 3. Faits stylisés

Au Canada, les faits suivants, bien documentés, offrent une base de comparaison pour les résultats issus de l’analyse statistique :
*   La superficie brûlée varie fortement d’une année à l’autre, mais elle oscille en moyenne entre 2 et 3 millions d’hectares par an.
*   Environ 80 à 90 % de la superficie brûlée est attribuée à des feux causés par la foudre, même si ces derniers représentent seulement 35 à 45 % du nombre total de feux (RNCan, 2024).
*   Les feux d’origine humaine sont plus fréquents, mais de taille beaucoup plus modeste, concentrés près des zones habitées.
*   Les années extrêmes, comme 1995, 2014 et 2023, correspondent à des conditions météorologiques exceptionnelles (chaleur et sécheresse).

## 4. Méthodologie et données

Les analyses reposent sur deux bases officielles canadiennes :
*   **National Burned Area Composite (NBAC)** – Ressources naturelles Canada : Données spatiales couvrant 1972–2024.
*   **National Fire Database (NFDB)** – Conseil canadien des ministres des forêts (CCFM) : Tableaux sur la superficie brûlée par cause et juridiction.

Le traitement des données a été effectué avec R (packages `readxl`, `dplyr`, `tidyr`, `ggplot2`, `scales`).

## 5. Résultats

### 5.1 Tendance globale – Critique de Denley

La série temporelle montre une forte variabilité interannuelle, avec des pics extrêmes en 1995 et 2023. L’analyse de régression linéaire a produit les résultats suivants :
*   **Pente (Coefficient beta_1)** : 630.5 (km²/an)
*   **Valeur p** : 0.156
*   **R² ajusté** : 0.03255

Le résultat de la régression indique une pente légèrement positive, mais la valeur p de 0.156 est supérieure au seuil de signification de 0.05. Par conséquent, l’hypothèse nulle d’absence de tendance ne peut être rejetée. Les données réfutent l’affirmation de Randall Denley selon laquelle la superficie brûlée serait en déclin.

### 5.2 Répartition par cause – Critique de Sankey

La répartition par cause révèle que les feux de foudre représentent la grande majorité de la superficie brûlée au Canada. Le tableau suivant résume la répartition moyenne sur la période 1990-2023 :

| Cause | Superficie (km²) | Pourcentage |
| :--- | :--- | :--- |
| **Foudre** | 690 340,29 | 86,1% |
| **Activités humaines** | 60 886,81 | 7,6% |
| **Autres Causes** | 50 811,13 | 6,3% |

L’argument de Chris Sankey est donc inexact : même si les feux humains sont fréquents, ils ne sont pas responsables de la majeure partie des superficies brûlées. La foudre demeure la cause dominante des grands feux.

## 6. Conclusion

L’analyse statistique menée à partir des données NBAC et NFDB permet de tirer les conclusions suivantes :
1.  L’affirmation de Randall Denley sur le déclin des feux est contredite par les données officielles.
2.  L’affirmation de Chris Sankey sur l'origine humaine prédominante est erronée : la foudre demeure la principale cause des superficies brûlées.

Une approche fondée sur les données permet de rétablir une compréhension plus objective du phénomène face aux simplifications médiatiques.
