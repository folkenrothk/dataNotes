library(tidyverse)
# check the data
View(mpg)
# run simple plot
ggplot(data = mpg) + geom_point(mapping = aes(x = mpg$displ, y = mpg$hwy ))


# changing dot size for better reading the plot
ggplot(data = mpg) + geom_point(mapping = aes(x = mpg$displ, y = mpg$hwy, size = class))

# Many color dots
ggplot(data = mpg) + geom_point(mapping = aes(x = mpg$displ, y = mpg$hwy, color = class))

# Many colors and size difference
ggplot(data = mpg) + geom_point(mapping = aes(x = mpg$displ, y = mpg$hwy, color = class, size = cyl))



# hwy mileage
ggplot(data = mpg) + geom_point(mapping = aes(x = mpg$displ, y = mpg$hwy ))

# city mileage
ggplot(data = mpg) + geom_point(mapping = aes(x = mpg$displ, y = mpg$cty ))


#incorporate hwy and cty mileage together in same plot
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue") + geom_point(mapping = aes(x = displ, y = cty), color="red")

#change dot size by class
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = cyl), color = "blue") + geom_point(mapping = aes(x = displ, y = cty, size = cyl), color="Red")

# adding trend lines
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = cyl), color = "blue") + geom_point(mapping = aes(x = displ, y = cty, size = cyl), color="Red") + geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv), color = "blue") + geom_smooth(mapping = aes(x = displ, y = cty, linetype = drv), color = "red")



# ref: https://plot.ly/ggplot2/stat_smooth/
#install.packages("plotly")
library(plotly)
p <- ggplot(mpg, aes(displ, hwy, color = cty))
p <- p + geom_point() + stat_smooth()
p <- ggplotly(p)
p

# ref: https://plot.ly/ggplot2/stat_smooth/
#install.packages("plotly")
library(plotly)
p <- ggplot(mpg, aes(displ, hwy, color = cty, size = displ))
p <- p + geom_point() + stat_smooth()
p <- ggplotly(p)
p