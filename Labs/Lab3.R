# Lab 3 Sandbox: Data Analytics

library(tidyverse)
View(mpg)

# Part 1 
## 3.2.4 {1-5}

# 1: blank graph
ggplot(data = mpg)

# 2: Look at the table
View(mpg)

# 3: drv variable?
?mpg

# 4: hwy vs cyl
ggplot(data = mpg) +  geom_point(mapping = aes(x = hwy, y = cyl))


# 5: class vs drv
ggplot(data = mpg) +  geom_point(mapping = aes(x = class, y = drv))


## 3.3.1

# 1: color me "blue"
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#3
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape= class))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color= model))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size= drv))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape= cty))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color= year))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size= cyl))

#4
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color= cty, size = cty))

#5

?geom_point
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, stroke = cyl))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, stroke = cyl, shape = class))

#6
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color= displ < 5))

#3.5.1

#1
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~ cty)

#2
ggplot(data = mpg) + geom_point(mapping = aes(x = drv, y = cyl)) + facet_grid(drv ~ cyl)

#3
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

#4
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

#5
?facet_wrap
?facet_grid

#3.6.1

#1
?geom_line
?geom_boxplot
?geom_histogram
?geom_area

#2

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

#6

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + geom_smooth(se = FALSE)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + geom_smooth(mapping = aes(group = drv), se = FALSE)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + geom_point() + geom_smooth(mapping = aes(group = drv), se = FALSE)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping = aes(color = drv)) + geom_smooth(se = FALSE)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping = aes(color = drv)) + geom_smooth(mapping = aes(linetype = drv), se = FALSE)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping = aes(color = drv)) + geom_point(shape = 21, color = "white", stroke = 2)

#3.7.1

#1
ggplot(data = diamonds) + 
  stat_summary(mapping = aes(x = cut, y = depth),
    fun.ymin = min, fun.ymax = max, fun.y = median)

ggplot(data = diamonds) + geom_pointrange(mapping = aes(x = cut, y = depth), stat = "summary", fun.min = min, fun.max = max, fun = median)

#2
?geom_col
?geom_bar

#4
?stat_smooth

#5
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = ..prop..))

