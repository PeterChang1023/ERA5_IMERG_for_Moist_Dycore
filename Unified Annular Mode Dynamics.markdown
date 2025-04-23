# Unified Annular Mode Dynamics (Lorenz and Hartmann 2001 in Lutsko and Hell 2021 Notation)

## Model Description
The dynamics of the annular mode, represented by the first principal component \( z_1(t) \) (zonal index, corresponding to meridional jet shifts), are modeled using a stochastic differential equation based on Lorenz and Hartmann (2001), rewritten in the notation of Lutsko and Hell (2021):

\[
\frac{\partial z_1}{\partial t} = \mu - \frac{z_1}{\tau_z}
\]

- \( z_1(t) \): Principal component of the leading EOF, representing annular mode variability.
- \( \mu(t) \): Eddy momentum flux forcing (EMF).
- \( \tau_z = 8.9 \, \text{days} \): Effective barotropic friction timescale (base damping timescale).

The eddy forcing \( \mu(t) \) includes a random component and a positive feedback:

\[
\mu = \hat{\mu} + \gamma z_1
\]

- \( \hat{\mu}(t) \): Random eddy forcing (approximated as white noise).
- \( \gamma = 0.0354 \, \text{day}^{-1} \): Positive eddy feedback coefficient.

Substituting, the governing equation becomes:

\[
\frac{\partial z_1}{\partial t} = \hat{\mu} + \left( \gamma - \frac{1}{\tau_z} \right) z_1
\]

## Effective Damping Rate
The effective damping rate \( \alpha \) is defined as:

\[
\alpha = \gamma - \frac{1}{\tau_z}
\]

\[
\alpha = 0.0354 - \frac{1}{8.9} \approx 0.0354 - 0.1124 = -0.077 \, \text{day}^{-1}
\]

The negative \( \alpha \) indicates that the positive feedback reduces damping, enhancing persistence.

## Effective Decorrelation Time
The effective decorrelation time (e-folding time) \( \tau_{\text{eff}} \) is:

\[
\tau_{\text{eff}} = \frac{1}{|\alpha|} = \frac{1}{\left| \gamma - \frac{1}{\tau_z} \right|} = \frac{\tau_z}{1 - \gamma \tau_z}
\]

\[
\gamma \tau_z = 0.0354 \times 8.9 \approx 0.315
\]

\[
\tau_{\text{eff}} = \frac{8.9}{1 - 0.315} = \frac{8.9}{0.685} \approx 13.0 \, \text{days}
\]

This indicates that the positive feedback extends the decorrelation time from \( \tau_z = 8.9 \, \text{days} \) to \( \tau_{\text{eff}} \approx 13.0 \, \text{days} \).

## Physical Interpretation
- \( \tau_z \): Base damping timescale, estimated from cross-spectral analysis of observational data, reflecting dissipation (e.g., boundary layer friction).
- \( \gamma \): Strength of positive eddy feedback, enhancing low-frequency variability.
- \( \alpha \): Effective damping rate, governing long-lag red-noise decay.
- \( \tau_{\text{eff}} \): Effective decorrelation time, reflecting the prolonged persistence due to positive feedback.