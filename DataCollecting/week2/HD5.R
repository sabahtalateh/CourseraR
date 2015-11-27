setwd("~/Code/R/DataCollecting/week2")

library(rhdf5)

created = h5createFile("example.h5")
h5createGroup("example.h5", "foo")
h5createGroup("example.h5", "bar")
h5createGroup("example.h5", "foo/bar")
h5createGroup("example.h5", "df")
print(h5ls("example.h5"))

A = matrix(1:10, nr = 5, nc = 2)
h5write(A, "example.h5", "foo/A")
B = array(seq(.1, .2, by = .1), dim = c(5, 2, 2))
attr(B, "scale") <- "litter"
h5write(B, "example.h5", "foo/bar/B")
print(h5ls("example.h5"))

df = data.frame(1L:5L, seq(0, 1, length.out = 5), c("ab", "cde", "fghi", "a", "s"), stringsAsFactors = F)
h5write(df, "example.h5", "df")
print(h5ls("example.h5"))
print(h5read("example.h5", "foo/A"))

h5write(c(12, 13, 14), "example.h5", "foo/A", index = list(1:3, 1))
print(h5read("example.h5", "foo/A"))

