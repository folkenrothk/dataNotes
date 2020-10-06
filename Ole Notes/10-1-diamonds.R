# 10.1.2020 notes


install.packages("ggplot2")
library(ggplot2)
library(tidyverse)

myData = diamonds

View(myData)
?diamond

outliers <- filter(diamonds, cut == "Fair", carat >= 4)