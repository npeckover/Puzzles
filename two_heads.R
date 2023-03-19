#### what is the expected number of coin flips until observing two H in a row?

# approach:
# if sum of ith and i+1th value is 2, 
# then cut the vector at that point and record the length of the shortened vector

B <- 1e4
len <- rep(0, B)
n <- 100
vex <- list()

j <- 1

# first loop to generate random vectors (length 100) of fair coin flips
for (j in 1:B) {
  vex[[j]] <- rbinom(n, 1, 0.5)
}

# nested loop to evaluate all vectors

i <- 1
for (j in 1:B) {
  for (i in 1:n) {
    if (vex[[j]][i] + vex[[j]][i + 1] == 2) {
      vec <- vex[[j]][1:(i + 1)]
      break
    }
  }
  len[j] <- length(vec)
}

# expected number of flips to get two heads in a row
mean(len)
