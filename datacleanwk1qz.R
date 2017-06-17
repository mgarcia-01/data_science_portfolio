install.packages("XML", dependencies = TRUE)
install.packages("xlsx", dependencies = TRUE)
install.packages("XLConnect", dependencies = TRUE)
install.packages("rJava", dependencies = TRUE)
install.packages("xlsxjars", dependencies = TRUE) 

library(XML)
library(xlsx)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
###doc  <-  xmlTreeParse(fileUrl, useInternal = TRUE)
## codebook for data fields found here https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf


download.file(fileUrl, destfile = "~/data_toolbox/cleanData_qz1q1.csv"
              , method = "curl"
              )


mcroHousingSrvyId <- read.csv("~/data_toolbox/cleanData_qz1q1.csv"
                              , sep = "," )

head(mcroHousingSrvyId,0)

mcroHousingSrvyId[which(mcroHousingSrvyId$VAL == 24),]
nrow(mcroHousingSrvyId[which(mcroHousingSrvyId$VAL == 24),])
#### quest 2

 unique(mcroHousingSrvyId$FES)

## ques 3    ######   !!!! error with xlsx package. needs to be fixed 
 # original data source http://catalog.data.gov/dataset/natural-gas-acquisition-program
 # url  https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx
 
 
 fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
 
 download.file(fileUrl, destfile = "~/data_toolbox/cleanData_qz1q2.xlsx"
               , method = "curl"
 )

 #dat <- 

###### question 4
 # url  https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml
 
 fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

 download.file(fileUrl, destfile = "~/data_toolbox/cleanData_qz1_q4.xml"
               , method = "curl"
 )
 
 doc  <-  xmlTreeParse(fileUrl, useInternal = TRUE)
 
 ###   question 5   ####
 # url https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv
 
 fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
 download.file(fileUrl, destfile = "~/data_toolbox/cleanData_qz1_q5.csv"
               , method = "curl"
 )
 
 install.packages("data.table",dependencies = TRUE)
 
 DT <- fread("~/data_toolbox/cleanData_qz1_q5.csv")
 ##broken down by sex. Using the data.table package, which will deliver the fastest user time?
 mean(DT$pwgtp15,by=DT$SEX)
 DT[,mean(pwgtp15),by=SEX]
 
 
 
