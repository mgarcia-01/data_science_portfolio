#ls ~michaelgarcia/Sync/'Coursera Data Science'/'R Programming'/'Week 1'/'hw1_data.csv/



rprog_quiz1data <- read.csv("~/data_toolbox/hw1_data.csv",header = TRUE,sep = ',')


mynulldata <- is.na.data.frame(rprog_quiz1data)
not_na <- complete.cases(rprog_quiz1data[1])
rprog_quiz1data[not_na,1]
nrow(rprog_quiz1data[!not_na,])


rprog_quiz1data[!not_na,]


#mean of none NA ozone column 
mean(rprog_quiz1data[not_na,1])

quiz18new <- rprog_quiz1data[ which(rprog_quiz1data$Ozone > 31 & 
                                 rprog_quiz1data$Temp > 90
                                 )
                          , ]
mean(quiz18new$Solar.R)

####

ques19new <- rprog_quiz1data[ which(rprog_quiz1data$Month == 6
                                    ),
                             ]
mean(ques19new$Temp)

##### maximum ozone value and is not na
ques20new <- rprog_quiz1data[ which(rprog_quiz1data$Month == 5 &
                                    complete.cases(rprog_quiz1data[1])
                                    ),
                             ]
max(ques20new$Ozone)




