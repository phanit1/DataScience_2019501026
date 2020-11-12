setwd("C:\\Users\\personal\\Desktop\\MSIT\\IT\\DataScience_2019501026\\Data Mining\\Assignment5")
examsdata <- read.csv("spring2008exams.csv")
str(examsdata)
meandata <- mean(examsdata$Midterm.1, na.rm = TRUE)
sddata <- sd(examsdata$Midterm.1, na.rm = TRUE)
z_score <- (examsdata$Midterm.1 - meandata)/sddata
sort(z_score)