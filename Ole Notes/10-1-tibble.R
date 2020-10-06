# 10.1.2020 tibble time

#install.packages("tibble")
library(tibble)
library(tidyverse)

#Data frame, making our own shit
SampleData <- tibble(
  col1 = c("a1","b1","c1"),
  col2 = c("a2","b2","c2"),
  col3 = c("a3","b3","c3"),
  col4 = c("a4","b4","c4")
)

View(SampleData)

#Rename rows
names(SampleData) <- c("A","B","C")

names(SampleData)

SampleData


#Columns 
SampleData[,1] 

#Rows
SampleData[1,]

# Element of first col, first row
SampleData[1,1]


## new thing

# Create
friends_data <- tibble(
  name = c("Alexander", "Luke", "Freddy", "Sam", "Amelia", "Daisy"),
  age = c(27, 25, 29, 26, 03, 25),
  height = c(180, 170, 185, 169, 60, 160),
  inCollege = c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE)
)

# Print
friends_data

#print first two lines
head(friends_data, 2) 