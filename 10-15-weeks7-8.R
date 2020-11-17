## Week 7: didnt pay attention



library(tidyverse)
sunSpotData1 <- read.table(file.choose(), sep=",",header = TRUE)

sunSpotData2 <- read.table("data/sunSpots.csv", sep=",",header = TRUE)

sunSpotData3 <- read_csv("PATH/sunSpots.csv")
ggplot(data = sunSpotData1) + geom_point(mapping = aes(x = fracOfYear, y = sunspotNum, color = numObs))

#save the plot to file
ggsave("~/Desktop/fractOfYearVersusSunspots.png")

#Naturally tidy data:
library(tibble)
tibble(x = 1:5, y = 1, z = x ^ 2 + y)
library(tidyverse)

# The same data displayed in multiple ways; each data set below organizes the values in a different way
table1 # country year cases population
table2 # country year type count
table3 # country year rate
table4a # country `1999` `2000`
table4b # country `1999` `2000`


View(table1)
View(table2)

table1 %>% count(year, wt = cases)

table1 %>% count(country, wt = as.numeric(population))



# Visualize changes over time on table1
ggplot(table1, aes(year, cases)) + geom_line(aes(group = country),colour = "grey50") + geom_point(aes(colour = country))

#Gather
newTable4a <-  table4a %>%
  gather(`1999`,`2000`, key = "year", value = "cases")


newTable4b <-  table4b %>%
  gather( `1999`, `2000`, key = "year", value = "population")

#Spread
spread(table2, key = type, value = count)


#Separate
table3 %>%
  separate(rate, into = c("cases", "population"), sep = "/")

table3 %>%
  separate(year, into = c("century", "year"), sep = 2)

#Unite
table5 %>% unite(year, century, year, sep ="") 


# Make a table with a missing entry (NA).
stocks <- tibble(
  year = c(2015, 2015, 2015, 2015, 2016, 2016, 2016),
  qtr = c( 1, 2, 3, 4, 2, 3, 4),
  return = c(1.88, 0.59, 0.35, NA, 0.92, 0.17, 2.66))


# Make the implicit missing values explicit (i.e., adding NA's to make it clear that there is missing data).
# Use spread() to place both years into own column.

stocks %>% spread(year, return)

# Remove all rows having "holes" in the data
# Create two cols for years 2015 and 2016
# Place years back into the same col again, removing the missing entries.

stocks %>% spread(year, return) %>% gather(year, return, '2015':'2016', na.rm = TRUE)



library(tibble)
#Create a table with missing entries
treatment <- tribble(
  ~ person, ~ treatment, ~response,
  "Derrick Whitmore", 1, 7,
  NA, 2, 10,
  NA, 3, 9,
  "Katherine Burke", 1, 4)

treatment %>% fill(person)



