set.seed(13435)
x <- data.frame("var1" = sample(1:5), "var2" = sample(6:10), "var3" = sample(11:15))
x <- x[sample(1:5), ]; x$var2[c(1,3)] = NA

print(x)
print(x[, 1])
print(x[, "var1"])
print(x[1:2, "var2"])

print(x[(x$var1 <= 3 & x$var3 > 11), ])
print(x[(x$var1 <= 3 | x$var3 > 15),])

# not NA
print(x[which(x$var2 > 8), ])

# sorting
print(sort(x$var1))
print(sort(x$var1, decreasing = T))
print(sort(x$var2, na.last = T))

# ordering
print(x[order(x$var1), ])
print(x[order(x$var1, x$var3), ])

# ordering with plyr
library(plyr)
print("plyr")
print(arrange(x, var1))
print(arrange(x, desc(var1)))

# adding rows and columns
x$var4 <- rnorm(5)
print(x)
y <- cbind(x, rnorm(5))
print(y)
z <- cbind(rnorm(5), x)
print(z)

a <- rbind(x, c("1","B",3,4))
print(a)





