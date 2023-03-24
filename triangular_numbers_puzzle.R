# triangular numbers puzzle from https://fivethirtyeight.com/features/how-many-brackets-can-you-bust/
x <- seq(1:1000)
y <- seq(from = 0, to = 1000)
i <- 1
for (i in x) {
  y[i + 1] <- x[i] + y[i]
}

# take the last two digits from the sums. (Converting to character preserves the second to last 0 if it exists)
trim <- sprintf('%02d', y %% 100)

# most commonly occuring numbers are 03, 28, 53, and 78
table(trim)

plot(table(trim), 
     ylab = 'Frequency',
     xlab = 'Last Two Digits')