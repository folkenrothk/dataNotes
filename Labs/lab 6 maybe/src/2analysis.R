# Date: 30 Oct 2020
# Lab06: Analysis of the relationships in Psychology data

# YourName: Kate Folkenroth

# Add your code below this line.

rm(list= ls())
library(tidyverse)

# make sure psych is installed
install.packages("psych")
library(psych)


#Grab the data: data.csv 
psychFile <- file.choose()
data <- read.csv(psychFile)

# View the data
View(data)

# Smaller data set, just Score, gender, and age
generalData <- select(data, score, gender, age)

# Data without outliers
generalData2 <- generalData %>% filter(age <= 100, gender >= 1) 


#### Correlations (pairs.panel)

# identifies outliers 
d2 <- outlier(generalData, cex=.8)
View(d2)

# make data frame with d2 and data set 
genD2 <- data.frame(generalData,d2)
 
# run pairs panels 
pairs.panels(genD2, bg = c ("yellow","blue")[(d2 > 25) + 1], pch = 21)

## Same commands, full data set, too hard to see everything
d3 <- outlier(data, cex=.8)
View(d3)
genD3 <- data.frame(data,d3)
pairs.panels(genD3, bg = c ("yellow","blue")[(d3 > 25) + 1], pch = 21)

#T Tests


#Linear Models
 ## Score vs Age
generalData2 %>% ggplot(aes(x = score, y = age, color = gender)) + geom_point(alpha = I(1/4)) + geom_smooth(method = lm)
generalData2 %>% ggplot(aes(x = age, y = score, color = gender)) + geom_point(alpha = I(1/4)) + geom_smooth(method = lm)

 ## Score vs gender
generalData2 %>% ggplot(aes(x = score, y = gender)) + geom_point(alpha = I(1/4)) + geom_smooth(method = lm)
generalData2 %>% ggplot(aes(x = gender, y = score)) + geom_point(alpha = I(1/4)) + geom_smooth(method = lm)


 ## Age vs gender
generalData2 %>% ggplot(aes(x = age, y = gender)) + geom_point(alpha = I(1/4)) + geom_smooth(method = lm)
generalData2 %>% ggplot(aes(x = gender, y = age)) + geom_point(alpha = I(1/4)) + geom_smooth(method = lm)


#New Approach

