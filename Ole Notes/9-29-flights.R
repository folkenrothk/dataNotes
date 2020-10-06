
# Install the library containing the data (if necessary)
install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

# check that the data is found in the library
nycflights13::flights
View(flights)


# assign this data to an object.
flights <- nycflights13::flights

# View the table's columns
names(nycflights13::flights)
#Or, run,
names(flights)

#show whole dataset
View(flights)

# show first and second row of data table
flights[1:2,] #flights[rows, cols]

# show first and second cols
flights[,1:2]

# show cols 1 and 5 (using a vector)
flights[,c(1,5)]

#show the data types
flights[1,]



#filter(object, column_header to consider)
filter(flights, month == 1, day == 1)
filter(flights, month == 1, dep_time == 554)

#Assign a variable to this particular object
dep_timeFlights554 <- filter(flights, month == 1, dep_time == 554)
View(dep_timeFlights554)