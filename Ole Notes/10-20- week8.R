# Week 8: idk man

functionName <- function(arg1, arg2, arg3=2, ...) {
  newVar <- sin(arg1) + sin(arg2) # do useful stuff
  newVar / arg3 # Return value
  }
  
functionName(2,3,1) # run function with inputs

getSin <- function(myVal) {
  # return sin values in radians
  sin(myVal)
}
getSin(2)

#Return the sum of squares:
sumOfSquares <- function(x,y) {
  x^2 + y^2
}
#run sumOfSquares () with x=2 and y=4
sumOfSquares(2,4) # returns 20

# function to plot points on the canvas
redPlot <- function(x, y) {
  plot(x, y, col="red")
}
# run the function
redPlot (2,4) # plot a red point
redPlot (c(2:10), c(2:10)) # a series of points

# determine points and color
colorPlot <- function(x, y, c) {
  plot(x, y, col=c)
}
# run the function
colorPlot(x, y, "red") # plot a red point
colorPlot (c(2:10), c(2:10), "blue")




GimmeAtLeastFive <- function(inNum){
  if(inNum >= 5){
    print("That is at least five")
  }
  else{
    print("not enough")
  }
}


# find the quantiles of the following set.
qnums <- c(3, 6, 7, 8, 8, 10, 13, 15, 16, 20)
summary(qnums) # quick preparation of stats


library(tidyverse)
View(AirPassengers)
# general meta data
summary(AirPassengers)
