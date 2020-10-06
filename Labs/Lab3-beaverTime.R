# Lab 3: Part 2 

#install.packages("tidyverse")
library(tidyverse)

#look at data options
data()

#beaver time
View(beaver1)
?beaver1


#scatterplot of time vs temp
ggplot(data = beaver1) + geom_point(mapping = aes(x = time, y = temp, size = activ)) + geom_smooth(mapping = aes(x = time, y = temp), se = FALSE)