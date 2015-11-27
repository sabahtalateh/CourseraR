#library(sqldf)

setwd("~/Code/R/DataCollecting/week2")

#download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "./data/quiz2.csv", method = "curl")

#asc <- read.csv("./data/quiz2.csv")
#asc1 = sqldf("select * from asc where AGEP < 50")
#asc2 = sqldf("select distinct AGEP from asc")

#url = "http://biostat.jhsph.edu/~jleek/contact.html "
#lines = readLines(url)

#url = "http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"
#download.file(url = url, destfile = "./data/quiz3.for")

#df = read.fwf("./data/quiz3.for", widths = 5)

x <- read.fwf(
  file=url("http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"),
  skip=4,
  widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))



