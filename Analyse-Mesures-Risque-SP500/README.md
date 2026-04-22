# Analyse des Mesures de Risque et Application au S&P500

Ce projet propose une analyse approfondie des mesures de risque financier, en se concentrant sur la Value-at-Risk (VaR) et l'Expected Shortfall (ES). L'étude explore ces concepts à travers des simulations sur des lois théoriques (Pareto et Exponentielle) avant de les appliquer aux données réelles de l'indice S&P500. L'objectif est de démontrer la robustesse de ces mesures dans différents contextes de distribution et d'évaluer leur performance prédictive sur des données de marché.

## Objectifs de l'Analyse

*   **Évaluation des Mesures de Risque** : Comprendre et appliquer la VaR et l'ES pour quantifier le risque financier.
*   **Modélisation des Distributions** : Comparer l'efficacité des distributions de Pareto, Exponentielle, Normale et Laplace dans la modélisation des rendements financiers.
*   **Backtesting et Performance** : Évaluer la performance prédictive des modèles de VaR et d'ES sur des données historiques du S&P500.

## Structure du Projet

Le projet est organisé de la manière suivante :

*   `Analyse_Mesures_Risque_SP500.Rmd` : Le script R Markdown principal qui contient l'intégralité du code source pour l'analyse, la génération des visualisations et la production du rapport.
*   `data/` : Ce répertoire est destiné à contenir les fichiers de données brutes si nécessaire (actuellement, les données sont téléchargées directement via `quantmod`).
*   `output/` : Ce répertoire contiendra les figures et les tableaux générés par l'exécution de l'analyse.

## Outils et Technologies

*   **Langage de Programmation** : R
*   **Bibliothèques R** : `ggplot2`, `knitr`, `patchwork`, `quantmod`, `xts`, `zoo`.

## Comment Exécuter l'Analyse

Pour reproduire l'analyse et générer le rapport :

1.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/dadjaratousarr854-eng/adjaratou-academic-projects.git
    ```
2.  **Naviguer vers le répertoire du projet** :
    ```bash
    cd adjaratou-academic-projects/Analyse-Mesures-Risque-SP500
    ```
3.  **Installer les packages R nécessaires** (si ce n'est pas déjà fait) :
    ```R
    install.packages(c("ggplot2", "knitr", "patchwork", "quantmod", "xts", "zoo"))
    ```
4.  **Ouvrir le fichier R Markdown** (`Analyse_Mesures_Risque_SP500.Rmd`) dans RStudio.
5.  **Générer le rapport** : Utiliser la fonction `Knit` de RStudio pour compiler le document en HTML, PDF ou Word. Les figures et tableaux seront sauvegardés dans le dossier `output/`.

## Résultats Clés

L'analyse met en évidence la capacité supérieure du modèle de Laplace à capturer les queues épaisses des rendements financiers par rapport au modèle Normal. Les backtests confirment la validité des modèles pour les niveaux de confiance choisis. Ces analyses sont fondamentales pour une gestion de portefeuille éclairée et une meilleure compréhension des dynamiques de risque sur les marchés financiers.
