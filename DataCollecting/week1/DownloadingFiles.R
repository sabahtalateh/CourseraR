setwd("~/Code/R/DataCollecting/week1")

if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
dateDownloaded <- date()
download.file(fileUrl, destfile = "./data/camera.xlsx", method = "curl")
print(list.files("./data"))
