library(XML)
library(RCurl)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

download.file(fileUrl, destfile = "~/data_toolbox/cleanData_qz1_q4.xml"
              , method = "curl"
)






fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc  <-  xmlTreeParse(fileUrl, useInternal = TRUE)
rootnode <- xmlRoot(doc)
a <- xmlName(rootnode)