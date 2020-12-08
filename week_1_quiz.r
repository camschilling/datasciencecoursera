##This script completes the quiz using the dataset provided
setwd("/Users/cameronschilling/Google Drive/School/Data_Science_Course/datasciencecoursera")
dta<-read.csv("hw1_data.csv")

head(dta)
##Extract first 2 rows
dta[1:2,]

##Count Number of Rows
nrow(dta)

##Look at last 2 rows
dta[152:153,]

##Value of Ozone in 47th row
dta[47,1]

##COunt number of NAs in ozone column (first column)
m_oz<-is.na(dta[,1])
length(m_oz[m_oz==1])

##Get mean of non-missing values
mean(dta[!m_oz,1])

##Get mean solar value when ozone > 31 and temp > 90
t<-dta[,1]>31 & dta[,4]>90
s<-dta[t,]
s
##Handle missing values
m_s<-is.na(s[,1])
s<-s[!m_s, 1:6]
mean(s[,2])

##What is the mean of "Temp" when "Month" is equal to 6?
m6<-dta[dta[,5]==6,1:6]
mean(m6[,4])

##What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
m5<-dta[dta[,5]==5,1:6]
m_m5<-is.na(m5[,1])
m5<-m5[!m_m5, 1:6]
max(m5[,1])

x <- 1:4
y <- 2
x+y

x <- list(2, "a", "b", TRUE)
x[[1]] 


