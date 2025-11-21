# M/M/3 Simulation
set.seed(456)

lambda <- 20
mu <- 10
servers <- 3
T <- 50

interarrival <- rexp(2000, lambda)
arrival_time <- cumsum(interarrival)
arrival_time <- arrival_time[arrival_time <= T]

n <- length(arrival_time)
service_time <- rexp(n, mu)

server_end <- rep(0, servers)
start_service <- numeric(n)
finish_service <- numeric(n)

for (i in 1:n) {
  s <- which.min(server_end)
  start_service[i] <- max(arrival_time[i], server_end[s])
  finish_service[i] <- start_service[i] + service_time[i]
  server_end[s] <- finish_service[i]
}

L_hat <- n / T
lambda_hat <- n / T
mu_hat <- mean(service_time)^(-1)

cat("L_hat:", L_hat, "\n")
cat("lambda_hat:", lambda_hat, "\n")
cat("mu_hat:", mu_hat, "\n")
