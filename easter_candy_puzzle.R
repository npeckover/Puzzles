B <- c(12, 13, 14, 16)
M <- c(23, 18, 19, 19)
H <- c(36, 36, 42, 43, 38)
C <- c(5, 6, 4, 7)

mean(M)**2 * mean(H) + mean(B)**2 * mean(C)


# Using only the discrete sampled values
N <- 10000
i <- 1
calcs <- vector()
for (i in 1:N) {
  calcs[i] <- sample(M, 1) **2 * 
    sample(H, 1) + sample(B, 1)**2 + 
    sample(C, 1)
}

hist(calcs)
mean(calcs)

# Using continuous vectors with imputed data 
b <- seq(12, 16, 1)
m <- seq(18, 23, 1)
h <- seq(36, 42, 1)

calcs2 <- vector()
for (i in 1:N) {
  calcs2[i] <- sample(m, 1) **2 * 
    sample(h, 1) + sample(b, 1)**2 + 
    sample(C, 1)
}

hist(calcs2)
mean(calcs2)
