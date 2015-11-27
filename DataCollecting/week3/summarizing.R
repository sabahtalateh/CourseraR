setwd("~/Code/R/DataCollecting/week3")

if(!file.exists("./data")){
  dir.create("./data")
}

fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
#download.file(fileUrl, destfile = "./data/restaurants.csv", method = "curl")
restData <- read.csv("./data/restaurants.csv")

# summary information
print(summary(restData))

# information about structure
print(str(restData))

# quantiles
print(quantile(restData$councilDistrict, na.rm = T))
print(quantile(restData$councilDistrict, probs = c(.5,.74,.9)))

# make table
print(table(restData$zipCode, useNA = "ifany"))
print(table(restData$councilDistrict, restData$zipCode))


# check for missing values
print(sum(is.na(restData$councilDistrict)))
# Встречалась ли NA в векторе
print(any(is.na(restData$councilDistrict)))
# проверить что все зипкоды больше нуля
print(all(restData$zipCode > 0))

# rows and cols sums
print(colSums(is.na(restData)))
print(all(colSums(is.na(restData)) == 0))

# values with specific characteristcs
print(table(restData$zipCode %in% c("21212", "21213")))
print(restData[restData$zipCode %in% c("21212", "21213"), ])

# cross tabs
data("UCBAdmissions")
df <- as.data.frame(UCBAdmissions)
print(summary(df))
xt <- xtabs(Freq ~ Gender + Admit, data = df)
print(xt)

# flat tables
warpbreaks$replicate <- rep(1:9, len = 54)
xt1 <- xtabs(breaks ~., data = warpbreaks)
print(xt1)
print(ftable(xt1))

# size of dataset
fakeData <- rnorm(1e5)
print(object.size(fakeData))
print(object.size(fakeData), units = "Mb")






