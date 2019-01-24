load("C:/SchoolWork/ECON_322/Data/wage2.RData")


IQm <- data$IQ[data$married == 1]
IQnm <- data$IQ[data$married == 0]

#example
hist(data$wage, probability= TRUE, main= "Wage Distribution" )
m <- mean(data$wage)
s <- sd(data$wage)
x <- sort(data$wage)
lines(x, dnorm(x, m, s), col=2, lty=2, lwd=2)

#IQm hist
hist(IQm, probability= TRUE, main= "Wage Distribution Married" )
m <- mean(IQm)
s <- sd(IQm)
x <- sort(IQm)
lines(x, dnorm(x, m, s), col=2, lty=2, lwd=2)

#IQnm hist
hist(IQnm, probability= TRUE, main= "Wage Distribution Not Married" )
m <- mean(IQnm)
s <- sd(IQnm)
x <- sort(IQnm)
lines(x, dnorm(x, m, s), col=2, lty=2, lwd=2)

#example
qqnorm(data$wage, main= "Wage QQ-Plot")
qqline(data$wage)

#IQm qq
qqnorm(IQm, main= "Wage QQ-Plot Married")
qqline(IQm)


#IQnm qq
qqnorm(IQnm, main= "Wage QQ-Plot Not Married")
qqline(IQnm)
