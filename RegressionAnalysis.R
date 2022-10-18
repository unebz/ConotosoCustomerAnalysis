library(ggplot2)
library(lm.beta)
library(car)

#Adding data
dat <- read.csv("Analysis3.csv")

#Defining main variables
main_var <- dat[,c("Freq","DaysThreeOrders")]

#Histogram of the main variables
plot(main_var)

#Checking assumptions
cor(main_var)
scatterplotMatrix(main_var, main = "Scatter Plot Matrix")

#Fitting linear regression model
fit <- lm (Freq ~ DaysThreeOrders, data = dat)
summary(fit)
lm.beta(fit)

#Checking fit assumptions
plot(fit)