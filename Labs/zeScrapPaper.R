library(tidyverse)
library(tibble)


shit <- tibble(
  colA = c(1,2,3,4),
  colB = c(5,6,7,8),
  colC = c(9,10,11,12),
  colD = c(12,14,15,16)
)

shit

sum(shit[1,3],shit[3,1])

view(flights)
?flights
ggplot(data = flights) + geom_point(mapping = aes(x = carrier, y = distance))