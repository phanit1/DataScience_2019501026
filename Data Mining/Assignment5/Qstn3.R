setwd("C:\\Users\\personal\\Desktop\\MSIT\\IT\\DataScience_2019501026\\Data Mining\\Assignment5")
data <- read.csv("sonar_test.csv", header = FALSE)
x <- data[,1:2]
plot(x, pch=19, xlab = expression(x[1]), ylab = expression(x[2]))

fit <- kmeans(x, 2)
points(fit$centers, pch = 19, col = "black", cex = 2)

library(class)
knnfit <- knn(fit$centers, x, as.factor(c(-1, 1)))
points(x, col = 2 + 1 * as.numeric(knnfit), pch = 19)

plot(x, pch=19, xlab=expression(x[1]), ylab=expression(x[2]))
y <- data[,61]
points(x, col=2 + 2 * y, pch=19)

errorrate <- 1-sum(knnfit==y)/length(y)
errorrate

x <- data[,1:60]
fit <- kmeans(x, 2)
library(class)
knnfit <- knn(fit$centers,x,as.factor(c(-1,1)))
errorrate1 = 1 - sum(knnfit==y)/length(y)
errorrate1