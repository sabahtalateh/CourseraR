library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
print(names(jsonData))
print(names(jsonData$owner))
print(jsonData$owner$url)

myJSON <- toJSON(iris, pretty = T)
print(myJSON)

iris2 <- fromJSON(myJSON)
print(head(iris2))
