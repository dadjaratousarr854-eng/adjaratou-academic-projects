# Évaluation Critique de l'Intelligence Artificielle en Mammographie

Ce projet présente une reproduction et une évaluation critique de l'étude "Nationwide real-world implementation of AI for cancer detection in population-based mammography screening", publiée dans *Nature Medicine*. L'objectif est d'analyser l'impact de l'intelligence artificielle dans le dépistage du cancer du sein et de valider les conclusions de l'étude originale.

## Objectifs de l'Étude
1.  **Synthèse et Évaluation Méthodologique** : Analyser la méthodologie employée dans l'article original.
2.  **Reproduction des Indicateurs Clés** : Appliquer les données publiques pour reproduire les mesures de performance clés du dépistage.
3.  **Analyse de Robustesse des Conclusions** : Évaluer la stabilité des conclusions de l'étude originale par une analyse indépendante.

## Méthodologie Statistique
L'analyse repose sur l'utilisation de modèles de régression logistique pour évaluer la relation entre l'utilisation de l'IA et le taux de détection du cancer :
- **Modèle Brut** : Analyse de l'effet direct de l'IA.
- **Modèle Ajusté** : Intégration de l'effet fixe du groupe de lecteurs (radiologues) pour réduire les facteurs de confusion.

## Résultats Principaux
Notre reproduction a confirmé la tendance positive de l'IA sur la détection, bien que l'ampleur de l'effet soit plus modeste que dans l'étude originale. Une attention particulière a été portée à l'augmentation du taux de rappel, soulignant les compromis nécessaires lors de l'intégration de l'IA en milieu clinique. Ces résultats sont essentiels pour une implémentation éclairée des technologies d'IA dans le domaine médical.

## Contenu du Répertoire
- `Analyse_IA_Mammographie.Rmd` : Script R Markdown complet pour la reproduction des analyses.
- `Rapport_Evaluation_IA.md` : Rapport détaillé présentant l'analyse critique et les résultats comparatifs.

## Outils Logiciels
- **Langage de Programmation** : R
- **Bibliothèques** : `tidyverse` (traitement de données), `broom` (résumés de régression), `ggplot2` (visualisation).
