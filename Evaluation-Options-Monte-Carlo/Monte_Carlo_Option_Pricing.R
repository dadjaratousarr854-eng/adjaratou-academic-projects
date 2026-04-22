library(readxl)
library(ggplot2)
library(dplyr)
library(tidyr)
library(stats)

# --- Paramètres du modèle Black-Scholes et Monte Carlo ---
S0 <- 4769.83 # Prix actuel de l'actif sous-jacent (S&P 500 au 31 déc. 2023)
K <- 4800     # Prix d'exercice de l'option (Strike)
r <- 0.05     # Taux d'intérêt sans risque annualisé (5%)
sigma <- 0.146 # Volatilité annualisée du sous-jacent (14.6%)
T <- 0.25     # Temps jusqu'à maturité en années (3 mois)
n_simulations <- 100000 # Nombre de simulations Monte Carlo
option_type <- "call" # Type d'option: "call" ou "put"

# --- Fonction Black-Scholes pour Call Européen ---
black_scholes_call <- function(S0, K, r, sigma, T) {
  d1 <- (log(S0 / K) + (r + 0.5 * sigma^2) * T) / (sigma * sqrt(T))
  d2 <- d1 - sigma * sqrt(T)
  call_price <- S0 * pnorm(d1) - K * exp(-r * T) * pnorm(d2)
  return(call_price)
}

# --- Prix théorique Black-Scholes ---
call_price_theoretical <- black_scholes_call(S0, K, r, sigma, T)
cat("Prix théorique Black-Scholes :", round(call_price_theoretical, 4), "\n\n")

# --- 1. Simulation Monte Carlo de Base ---
set.seed(123) # Pour la reproductibilité
Z_base <- rnorm(n_simulations) # Tirages de variables normales standard
ST_base <- S0 * exp((r - 0.5 * sigma^2) * T + sigma * sqrt(T) * Z_base)

payoffs_base <- pmax(ST_base - K, 0)
option_price_base <- exp(-r * T) * mean(payoffs_base)

cat("Prix estimé Monte Carlo (Base) :", round(option_price_base, 4), "\n")

# --- 2. Techniques de Réduction de Variance ---

## 2.1. Antithetic Variates (Variables Antithétiques) ---
Z_antithetic <- -Z_base # Variables opposées
ST_antithetic1 <- S0 * exp((r - 0.5 * sigma^2) * T + sigma * sqrt(T) * Z_base)
ST_antithetic2 <- S0 * exp((r - 0.5 * sigma^2) * T + sigma * sqrt(T) * Z_antithetic)

payoffs_antithetic <- (pmax(ST_antithetic1 - K, 0) + pmax(ST_antithetic2 - K, 0)) / 2
option_price_antithetic <- exp(-r * T) * mean(payoffs_antithetic)

cat("Prix estimé Monte Carlo (Antithetic Variates) :", round(option_price_antithetic, 4), "\n")

## 2.2. Control Variates (Variables de Contrôle) ---
# Pour le contrôle variates, nous utilisons le prix de l'actif sous-jacent comme variable de contrôle
# Le prix théorique de l'actif sous-jacent à maturité est S0 * exp(r*T)

# Simuler de nouvelles trajectoires pour la variable de contrôle
Z_control <- rnorm(n_simulations)
ST_control <- S0 * exp((r - 0.5 * sigma^2) * T + sigma * sqrt(T) * Z_control)
payoffs_control <- pmax(ST_control - K, 0)

# Variable de contrôle (prix final de l'actif)
control_variate <- ST_control

# Valeur attendue de la variable de contrôle sous mesure risque-neutre
expected_control_variate <- S0 * exp(r * T)

# Calcul du coefficient beta optimal
beta_optimal <- cov(payoffs_control, control_variate) / var(control_variate)

# Ajustement des payoffs
adjusted_payoffs <- payoffs_control - beta_optimal * (control_variate - expected_control_variate)

# Calcul du prix ajusté
option_price_control_variate <- exp(-r * T) * mean(adjusted_payoffs)

cat("Prix estimé Monte Carlo (Control Variates) :", round(option_price_control_variate, 4), "\n")

## 2.3. Stratified Sampling (Échantillonnage Stratifié) ---
# Tirer N variables uniformes
U_stratified <- runif(n_simulations)

# Transformer en normales stratifiées
Z_stratified <- qnorm((rank(U_stratified) - 0.5) / n_simulations)

# Simuler les trajectoires stratifiées
ST_stratified <- S0 * exp((r - 0.5 * sigma^2) * T + sigma * sqrt(T) * Z_stratified)
payoffs_stratified <- pmax(ST_stratified - K, 0)
option_price_stratified <- exp(-r * T) * mean(payoffs_stratified)

cat("Prix estimé Monte Carlo (Stratified Sampling) :", round(option_price_stratified, 4), "\n")

# --- Fonctions d'analyse comparative (Variance, CI, RMSE, Efficacité) ---
calculate_efficiency <- function(variance, time_taken) {
  return(1 / (variance * time_taken))
}

# Fonction pour analyser les résultats et calculer les métriques
analyse_results <- function(payoffs, name, theoretical_price) {
  price_estimate <- exp(-r * T) * mean(payoffs)
  var_payoff <- var(payoffs)
  
  # Intervalle de confiance 95%
  se_payoff <- sqrt(var_payoff / length(payoffs))
  ci_lower <- exp(-r * T) * (mean(payoffs) - 1.96 * se_payoff)
  ci_upper <- exp(-r * T) * (mean(payoffs) + 1.96 * se_payoff)
  
  # RMSE (Root Mean Square Error) par rapport au prix théorique
  rmse <- sqrt(mean((price_estimate - theoretical_price)^2))
  
  # Placeholder for time_taken, as we don't measure it in this script
  # Assume unit time for comparison of efficiency, or 1 if not measured
  time_taken <- 1 
  efficiency <- calculate_efficiency(var_payoff, time_taken)
  
  return(data.frame(
    Methode = name,
    Estimation = price_estimate,
    Variance = var_payoff,
    CI_Lower = ci_lower,
    CI_Upper = ci_upper,
    RMSE = rmse,
    Efficiency = efficiency
  ))
}

# --- Exécution de l'analyse comparative ---
results_df <- bind_rows(
  analyse_results(payoffs_base, "Monte Carlo Base", call_price_theoretical),
  analyse_results(payoffs_antithetic, "Antithetic Variates", call_price_theoretical),
  analyse_results(adjusted_payoffs, "Control Variates", call_price_theoretical), # Note: adjusted_payoffs for Control Variates
  analyse_results(payoffs_stratified, "Stratified Sampling", call_price_theoretical)
)

print(results_df)

# --- Visualisations (Exemples) ---
# Distribution des prix simulés à maturité (Base)
df_base_plot <- data.frame(ST = ST_base)
p_base <- ggplot(df_base_plot, aes(x=ST)) +
  geom_histogram(bins=50, fill="lightblue", color="black") +
  labs(title="Distribution des Prix Simulés à Maturité (Monte Carlo Base)", x="Prix à Maturité", y="Fréquence") +
  theme_minimal()

# Distribution des prix simulés à maturité (Antithetic Variates)
df_antithetic_plot <- data.frame(ST = c(ST_antithetic1, ST_antithetic2), Type = rep(c("Z", "-Z"), each = n_simulations))
p_antithetic <- ggplot(df_antithetic_plot, aes(x=ST, fill=Type)) +
  geom_histogram(bins=50, alpha=0.7, position="identity", color="black") +
  labs(title="Distribution des Prix Simulés (Antithetic Variates)", x="Prix à Maturité", y="Fréquence") +
  theme_minimal()

# Distribution des prix simulés à maturité (Stratified Sampling)
df_stratified_plot <- data.frame(ST = ST_stratified)
p_stratified <- ggplot(df_stratified_plot, aes(x=ST)) +
  geom_histogram(bins=50, fill="lightgreen", color="black") +
  labs(title="Distribution des Prix Simulés (Stratified Sampling)", x="Prix à Maturité", y="Fréquence") +
  theme_minimal()

# Sauvegarde des graphiques dans le dossier 'output'
ggsave("output/dist_base_mc.png", plot = p_base, width = 10, height = 6, dpi = 300)
ggsave("output/dist_antithetic_variates.png", plot = p_antithetic, width = 10, height = 6, dpi = 300)
ggsave("output/dist_stratified_sampling.png", plot = p_stratified, width = 10, height = 6, dpi = 300)

# Pour le Control Variates, le graphique de relation entre ST et Payoff est plus pertinent
df_control_plot <- data.frame(ST = ST_control, Payoff = payoffs_control)
p_control <- ggplot(df_control_plot, aes(x=ST, y=Payoff)) +
  geom_point(alpha=0.5) +
  geom_smooth(method="lm", se=FALSE, color="red") +
  labs(title="Relation entre Prix Terminal et Payoff (Control Variates)", x="Prix à Maturité", y="Payoff") +
  theme_minimal()

ggsave("output/relation_control_variates.png", plot = p_control, width = 10, height = 6, dpi = 300)
