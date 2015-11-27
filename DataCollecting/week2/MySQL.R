library(RMySQL)

connection <- dbConnect(MySQL(), user="root", host="localhost", password="root")
result <- dbGetQuery(connection, "show databases")
dbDisconnect(connection)

zaymer2 <- dbConnect(MySQL(), user="root", host="localhost", password="root", db="zaymer2")
allTables <- dbListTables(zaymer2)


print(result)
print(length(allTables))
print(allTables[1:5])
print(dbListFields(zaymer2, "application_enquiries"))
print(dbGetQuery(zaymer2, "select count(*) from application_enquiries"))
affyData <- dbReadTable(zaymer2, "application_enquiries")
print(head(affyData))

query <- dbSendQuery(zaymer2, "select * from cash_flows where amount between 1 and 100")
affyMis <- fetch(query)
print(quantile(affyMis$amount))

affyMusSmall <- fetch(query, n = 10)
dbClearResult(query)

print(dim(affyMusSmall))



dbDisconnect(zaymer2)
