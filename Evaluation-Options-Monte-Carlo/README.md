# Évaluation d'Options Européennes par Simulation de Monte Carlo

Ce projet est dédié à l'implémentation et à l'évaluation comparative de diverses techniques de simulation de Monte Carlo pour l'évaluation d'options européennes, dans le cadre du modèle de Black-Scholes. L'objectif principal est d'explorer et de comparer différentes méthodes de réduction de variance afin d'améliorer la précision et l'efficacité des estimations de prix.

## Objectifs de l'Étude

L'étude vise à :

*   **Implémenter le Modèle de Black-Scholes** : Mettre en œuvre le cadre théorique pour la tarification des options.
*   **Développer des Simulations de Monte Carlo** : Appliquer des simulations pour estimer le prix des options européennes.
*   **Évaluer les Techniques de Réduction de Variance** : Comparer l'efficacité des variables antithétiques, des variables de contrôle et de l'échantillonnage stratifié.
*   **Analyser la Précision et l'Efficacité** : Quantifier les gains en précision et en temps de calcul apportés par chaque méthode.

## Méthodologie

La méthodologie comprend les étapes suivantes :

1.  **Modèle de Black-Scholes** : Utilisation du modèle de Black-Scholes comme référence pour la tarification des options européennes.
2.  **Simulation de Monte Carlo de Base** : Réalisation d'une simulation sans techniques de réduction de variance pour établir une ligne de base.
3.  **Techniques de Réduction de Variance** :
    *   **Variables Antithétiques** : Génération de paires de trajectoires corrélées négativement pour réduire la variance.
    *   **Variables de Contrôle** : Utilisation d'une variable auxiliaire dont la covariance avec la variable d'intérêt est connue pour ajuster l'estimateur.
    *   **Échantillonnage Stratifié** : Division de l'espace des paramètres en strates et échantillonnage indépendant dans chaque strate.
4.  **Analyse Comparative** : Évaluation des résultats en termes de variance de l'estimateur et de temps de calcul.

## Contenu du Répertoire

*   `Rapport_Modelisation_Stochastique.pdf` : Rapport complet détaillant les fondements théoriques, la méthodologie et les résultats du projet.
*   `Monte_Carlo_Option_Pricing.R` : Script R contenant l'implémentation du modèle de Black-Scholes, de la simulation de Monte Carlo de base et des différentes techniques de réduction de variance.

## Outils Logiciels

*   **Langage de Programmation** : R
*   **Bibliothèques** : `stats`, `ggplot2`, `dplyr`.
