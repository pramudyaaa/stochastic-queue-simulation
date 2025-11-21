# stochastic-queue-simulation
This repository contains implementations and analyses of stochastic queueing systems, specifically the **M/M/1** and **M/M/3** models. The project demonstrates simulation techniques, exponential distribution behavior, and performance metrics estimation in queueing theory.


---

## 📘 Project Overview

### 🔹 **M/M/1 Queue Simulation (λ = 8, μ = 12)**
- Inter-arrival and service times are generated from exponential distributions.
- The queue is simulated over a fixed time horizon.
- The time-average number of customers in the system (**L̂**) is computed.
- Simulation results show **L̂ ≈ 1.9**, which is close to the theoretical value **L = 2**.

### 🔹 **M/M/3 Queue Simulation (λ = 20, μ = 10 per server)**
- The model uses 3 servers with exponential service times.
- Estimated parameters from simulation:
  - **λ̂** (arrival rate)  
  - **μ̂** (service rate)  
  - **L̂** (average number in system)
- Results are very close to theoretical values, demonstrating the correctness of the simulation.

---

## 📊 Inter-Arrival Time Distribution Analysis
The inter-arrival times generated from the exponential distribution are compared to the theoretical distribution using:
- **Histogram**
- **QQ-Plot**

The visual results confirm that the simulated data follows the expected exponential pattern.
( at 'plots/' folder)

---

## 🎯 Learning Objectives
This project demonstrates your skills in:

- Queueing Theory (M/M/1 and M/M/3 models)
- Stochastic Process Simulation
- Exponential Distribution Modeling
- R Programming for Simulation
- Time-Average System Metrics
- Data Visualization & Statistical Interpretation

---

## 🛠 Tools & Technologies
- **R Programming Language**
- Exponential Random Variable Generation
- Basic Statistical Analysis
- (Optional) ggplot2 for visualization

---

## 📄 Notes
This repository was created as a portfolio project to showcase simulation and analytical skills in stochastic modeling.

