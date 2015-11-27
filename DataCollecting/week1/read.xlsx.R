library(xlsx)
camerData <- read.xlsx("./data/camera.xlsx", sheetIndex = 1, header = T)
print(head(camerData))

camerDataSubset <- read.xlsx("./data/camera.xlsx", sheetIndex = 1, header = T, colIndex = 2:3, rowIndex = 1:4)
print(head(camerDataSubset))


