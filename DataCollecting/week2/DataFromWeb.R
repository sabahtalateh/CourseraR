setwd("~/Code/R/DataCollecting/week2")

#library(XML)
#url <- "https://ru.wikipedia.org/wiki/%D0%91%D0%B3%D0%B0%D0%B6%D0%B1%D0%B0,_%D0%9C%D0%B8%D1%85%D0%B0%D0%B8%D0%BB_%D0%A2%D0%B5%D0%BC%D1%83%D1%80%D0%BE%D0%B2%D0%B8%D1%87"
#download.file(url, destfile = "./data/t.html", method = "curl")
#html = htmlTreeParse("./data/t.html", useInternalNodes = T)

#print(xpathSApply(xmlRoot(html), "//*[@class='mw-headline']", xmlValue))

library(httr)
#html2 = GET("https://ru.wikipedia.org/wiki/%D0%91%D0%B3%D0%B0%D0%B6%D0%B1%D0%B0,_%D0%9C%D0%B8%D1%85%D0%B0%D0%B8%D0%BB_%D0%A2%D0%B5%D0%BC%D1%83%D1%80%D0%BE%D0%B2%D0%B8%D1%87")
#content2 = content(html2, as="text")
#parsedHtml = htmlParse(content2, asText = T)
#print(xpathSApply(parsedHtml, "//title", xmlValue))

pg1 = GET("http://httpbin.org/basic-auth/user/passwd")
print(pg1)

pg2 = GET("http://httpbin.org/basic-auth/user/passwd", authenticate("user", "passwd"))
print(pg2)
print(names(pg2))

google = handle("http://google.com")
pg3 = GET(handle = google, path = "/")
pg4 = GET(handle = google, path = "search")

print(pg3)
print(pg4)






