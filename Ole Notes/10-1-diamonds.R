# 10.1.2020 notes


install.packages("ggplot2")
library(ggplot2)
library(tidyverse)

myData <- diamonds

View(myData)
?diamond

outliers <- filter(diamonds, cut == "Fair", carat >= 4)

?diamonds

ggplot(data = diamonds) + geom_point(mapping = aes(x = carat, y = cut, color = clarity, size = price))


#generate point plot (as we have done before)
ggplot(data = diamonds) +
  geom_point(mapping = aes(x = cut, y = carat, color = clarity))

# generate a histogram
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# find "local" statistics about the "cut" column:
diamonds %>% count(cut)
