# M/M/1 Simulation
set.seed(123)

lambda <- 8
mu <- 12
T <- 100

# Generate inter-arrival & service times
interarrival <- rexp(1000, lambda)
service <- rexp(1000, mu)

arrival_time <- cumsum(interarrival)
arrival_time <- arrival_time[arrival_time <= T]

n <- length(arrival_time)
service_time <- service[1:n]

start_service <- numeric(n)
finish_service <- numeric(n)

start_service[1] <- arrival_time[1]
finish_service[1] <- start_service[1] + service_time[1]

for (i in 2:n) {
  start_service[i] <- max(arrival_time[i], finish_service[i-1])
  finish_service[i] <- start_service[i] + service_time[i]
}

# Hitung time-average L
time_points <- sort(c(arrival_time, finish_service))
L <- numeric(length(time_points))

count <- 0
j <- 1

for (i in 1:length(time_points)) {
  if (j <= n && time_points[i] == arrival_time[j]) {
    count <- count + 1
    j <- j + 1
  } else {
    count <- count - 1
  }
  L[i] <- count
}

L_hat <- sum(diff(c(0, time_points)) * L) / max(time_points)
print(L_hat)
