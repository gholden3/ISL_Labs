# Lab2 from intro to statistical learning by James, Witten, Hastie, Tibshirani

# BASIC COMMANDS
x <- c(1, 3, 2, 5)
x
# 1 3 2 5
#x <- c(7, 5, 4, )
#Error in c(7, 5, 4, ) : argument 4 is empty
 x <- c(7, 5, 4, 6)
y = c(1, 4, 3)
length(x)
#[1] 4
length(y)
#[1] 3
y = c(y, 6)
y
#[1] 1 4 3 6
x+y
#[1]  8  9  7 12
ls()
#[1] "x" "y"
 rm(x, y)
 ls()
#character(0)
 ?matrix
 x = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
 x
#[,1] [,2]
#[1,]    1    3
#[2,]    2    4
# fills by columns. for rows use
 matrix(c(2,2,3,4),2,2,byrow=TRUE)
sqrt(x)
x^2
# rnorm generates a vecttor of random normal variables where n, first argument, is sample size
# by default creates mean 0 std dev of 1
x = rnorm(50)
y = rnorm(50, mean=50, sd = .1)
cor(x,y)
set.seed(1303)
rnorm(50)
# mean() and var() functions compute mean and variance of a vector.
# sd()  or  sqrt(var()) will give standard dev
set.seed(3)
y = rnorm(100)
mean(y)
var(y)
sqrt(var(y))
sd(y)


# GRAPHICS
# plot() function is the primary way to plot data in R
# xlab - labels the x axis
x=rnorm(100)
y=rnorm(100)
print(plot(x,y))
print(plot(x,
           y, 
           xlab="this is the x-axis",
           ylab="this is the y-axis",
           main="Plot of X vs Y"))
# pdf("Figure.pdf")
# plot(x,y, col="green")
# def.off() - indicates to R that we are done creating the plot

#seq() used to create a sequence of numbers. seq(a,b) creates a vector
# of numbers between a and b

# creates a sequence of 10 numbers evenly spaced between 0 and 1
seq(0,1, length=10)
#shorthand for seq(3, 11)
print(3:11)
x = seq(-pi, pi, length=50)

# contour creates a contour plot to represent 3-d data. it's like a 
# topographical map. arguments: vector of x values, vector of y values,
# a matrix whose elements correxpond to the z value for each pair of (x,y)
y=x
f=outer(x,y, function(x,y)cos(y)/(1+x^2))
#print(f)
contour(x,y,f)
contour(x,y, f, nlevels=45, add=T)
fa=(f-t(f))/2
contour(x,y,fa, nlevels=15)

# image() produces a color-coded plot whose colors depend on the z value. heatmap.
# persp() produces a 3d plot. arguments theta and phi control the angles at which the 
# plot is viewed
image(x,y,fa)
persp(x,y,fa)
persp(x,y, fa, theta=30)
persp(x,y, fa, theta=30, phi=20)
persp(x,y, fa, theta=30, phi=70)
persp(x,y, fa, theta=30, phi=40)