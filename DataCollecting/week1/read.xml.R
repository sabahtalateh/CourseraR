library(XML)
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileUrl, useInternalNodes = T)
rootNode <- xmlRoot(doc)
print(xmlName(rootNode))

print(names(rootNode))

print(rootNode[[1]])

print(rootNode[[1]][[1]])

vals <- xmlSApply(rootNode, xmlValue)
print(vals)

print(xpathApply(rootNode, "//name", xmlValue))

print(xpathApply(rootNode, "//price", xmlValue))

fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileUrl, useInternalNodes = T)
scores <- xpathSApply(doc, "//*[@class='score']", xmlValue)
teams <- xpathSApply(doc, "//*[@class='team-name']", xmlValue)
print(scores)
print(teams)
