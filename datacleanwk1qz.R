install.packages("XML", dependencies = TRUE)
install.packages("xlsx", dependencies = TRUE)
library(XML)
library(XLSX)
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

mcroHousingSrvyId$FES





