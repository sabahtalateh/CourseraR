setwd("~/Code/R/DataCollecting/week3")

restData <- read.csv("./data/restaurants.csv")

# sequences
s1 <- seq(1, 10, by = 2)
print(s1)

s2 <- seq(1, 10, length = 3)
print(s2)

x <- c(1,3,8,25,100)
print(seq(along = x))

# subsetting vars
restData$nearMe <- restData$neighborhood %in% c("Roland Park", "Homeland")
print(table(restData$nearMe))

# binary vars
restData$zipWrong <- ifelse(restData$zipCode < 0, T, F)
print(table(restData$zipWrong, restData$zipCode < 0))

# categorical vars
restData$zipGroups <- cut(restData$zipCode, breaks = quantile(restData$zipCode))
print(table(restData$zipGroups))
print(table(restData$zipGroups, restData$zipCode))

# easier cutting with Hmisc
library(Hmisc)
restData$zipGroups = cut2(restData$zipCode, g = 4)
print(table(restData$zipGroups))

# factor vars
restData$zfc <- factor(restData$zipCode)
print(restData$zfc[1:10])
print(class(restData$zfc))

# levels of factor vars
yesno <- sample(c("yes", "no"), size = 10, replace = T)
yesnofac = factor(yesno, levels = c("yes", "no"))
print(relevel(yesnofac, ref="yes"))
print(as.numeric(yesnofac))

# cutting produces factor vars
library(Hmisc)
restData$zipGroups <- cut2(restData$zipCode, g = 4)
print(table(restData$zipGroups))

# using mutate function
library(plyr)
restData2 = mutate(restData, zipGroups = cut2(restData$zipCode, g = 4))
print(table(restData2$zipGroups))
















