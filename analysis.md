# 📊 Queueing System Simulation – Detailed Analysis

This document provides a complete analysis of the stochastic queue simulations performed using **M/M/1** and **M/M/3** models.  
It also includes validation of inter-arrival times using histogram and QQ-plot methods.

---

# 🔍 1. M/M/1 Queue Simulation Analysis
**Parameters**  
- Arrival rate: **λ = 8 customers/hour**  
- Service rate: **μ = 12 customers/hour**  
- Duration: **T = 100 hours**

---

## 1.1. System Stability
The traffic intensity is:

\[
ρ = \frac{ λ }{ μ } = \frac{ 8 }{ 12 } = 0.6667
\]

Since \( ρ < 1 \), the system is **stable**.

---

## 1.2. Theoretical Metrics
For an M/M/1 queue:

\[
L = \frac { ρ }{ 1 - ρ} = 2
\]

\[
W = \frac { 1 }{ μ - λ } = 0.25 { hours }
\]

---

## 1.3. Simulation Result
Time-average number of customers:

\[
L̂ = 1.903032
\]

This is very close to the theoretical value of **2**.

---

## 1.4. Interpretation
- The difference between simulated and theoretical value is expected due to randomness.  
- Over a longer simulation duration, \( L̂ \) will get even closer to the theoretical value.  
- This confirms that the implementation of the M/M/1 model is correct.

---

## 1.5. Conclusion
The M/M/1 simulation behaves as expected and aligns with theoretical queueing behavior.

---

# 🔍 2. M/M/3 Queue Simulation Analysis
**Parameters**  
- Arrival rate: **λ = 20 customers/hour**  
- Service rate per server: **μ = 10 customers/hour**  
- Number of servers: **c = 3**

---

## 2.1. System Stability
\[
ρ = \frac{ λ }{ cμ } = \frac { 20 }{ 30 } = 0.6667
\]

The system is **stable** because \( ρ < 1 \).

---

## 2.2. Simulation Results

| Parameter | Estimated | True |
|----------|-----------|------|
| λ̂        | 19.66     | 20   |
| μ̂        | 9.826     | 10   |
| L̂        | 2.7669    | —    |

---

## 2.3. Interpretation
- Estimated arrival and service rates are very close to their true values.  
- The average number in the system matches the expected behavior for an M/M/3 queue.  
- This validates the correctness of event handling and multi-server simulation logic.

---

## 2.4. Conclusion
The simulation accurately reflects the expected behavior of a multi-server queue.

---

# 🔍 3. Inter-Arrival Time Distribution Validation

---

## 3.1. Histogram Test
- Shows high frequency at low inter-arrival times  
- Exhibits an exponential decay pattern  
- Matches the expected shape for an exponential distribution

---

## 3.2. QQ-Plot Test
- The simulated quantiles closely follow theoretical exponential quantiles  
- Points align with the diagonal reference line  
- Confirms correct exponential sampling

---

# 🎯 Overall Conclusion

✔ Both **M/M/1** and **M/M/3** simulations match theoretical expectations  
✔ Estimated metrics show high accuracy  
✔ Inter-arrival times follow the exponential distribution  
✔ The simulation model was implemented correctly  
✔ Demonstrates strong understanding of queueing theory & stochastic modeling  

---

# 🧠 Skills Demonstrated
- Queueing Theory  
- Stochastic Simulation  
- Exponential Modeling  
- R Programming  
- Statistical Validation  
- Multi-server Queue Logic  
