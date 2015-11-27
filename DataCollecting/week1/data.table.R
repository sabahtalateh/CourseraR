library(data.table)

DF <- data.frame(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))

DT <- data.table(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))

tables() # Tables in memory

print(DT[2,])

print(DT[DT$y=="a", ])

print(DT[c(2,3)]) # Select rows 2 and 3

print(DT[, list(mean(x), sum(z))])

print(DT[, table(y)])

print(DT[, w:=z^2])

DT2 <- DT

print(DT[, m:={tmp <- (x + z); log2(tmp + 5)}])
print(DT[, a:=x>0])
print(DT[, b:=mean(x+w), by = a])

set.seed(123)
DT3 <- data.table(x = sample(letters[1:3], 1E5, T))
print(DT3[, .N, by = x])

DT4 <- data.table(x = rep(c("a", "b", "c"), each = 100), y = rnorm(300))
setkey(DT4, x)
print(DT4['a'])

DT5 <- data.table(x = c('a', 'b', 'c', 'dt1'), y = 1:4)
DT6 <- data.table(x = c('a', 'b', 'dt2'), z = 5:7)
setkey(DT5, x); setkey(DT6, x)
print(merge(DT5, DT6))

bigDF <- data.frame(x = rnorm(1E6), y = rnorm(1E6))
file <- tempfile()
write.table(bigDF, file = file, row.names = F, col.names = F, sep = "\t", quote = F)
print(system.time(fread(file)))

print(system.time(read.table(file, header = T, sep = "\t")))




















