
Github : MoreExcuses
Seneca ID: 042556142

###Objective

>We are to go through the document:   https://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf
and complete the 14 To-do sections as well as the last bonus one in the footnotes of To-Do 14

###3.1 Calculator

(2014-2014)/(2014-1992)*100

###3.2 Workspace

a <- 2014-2014
b <- 2014-1992
c <- 100

a/b*c

###3.4 Functions

b = c(4,5,8,11)

sum(c)

###3.5 Plots

x=rnorm(100)
plot(x)

###4 Help and Documentation

help(sqrt)

###5 Scripts

source("firstscript.R")
source("firstscript.R")
source("firstscript.R")

###6.2 Matrices

P = seq(from=31, to=60)

Q=matrix(data=P,ncol=5)

Q

###6.3 Data Frames

source("dataframe.R")

dataframe.R
x1 = c(rnorm(100))
x2 = c(rnorm(100))
x3 = c(rnorm(100))
t = data.frame(a=x1,b=(x1+x2),c=(x1+x2+x3))
plot(t)
>sd has been deprecated and you can use the below line instead
sapply(t, sd)

#7. Graphics
x1 = c(rnorm(100))
x2 = c(rnorm(100))
x3 = c(rnorm(100))

plot(t$a, type="l", ylim=range(t),lwd=3, col=rgb(1,0,0,0.3))
lines(t$b, type="s", lwd=2,
col=rgb(0.3,0.4,0.3,0.9))
points(t$c, pch=20, cex=4,
col=rgb(0,0,1,0.3))

*rgb is setting color with r meaning red, g meaning green and b meaning blue
*the last argument in this for rgb stands for alpha. When alpha is less than 1 and greater than 0, they will appear as semi-transparent
*lwd stands for line width
*pch allows you to either specify and integer or single character to be used as a plotting point.
*cex is a numerical value giving the amount by which text and symbols will be magnified relative to default.

###8. Reading and writing data files

d = data.frame(a = c(1,2,4,8,16,32), g = c(2,4,8,16,32,64), x = c(3,6,12,24,48,96))
write.table(d,file="tst1.txt" , row.names.data.frame())
d1 = read.table(file="tst1.txt", header=TRUE)
d2 = d1$g*5
write.table(d2, file="tst2.txt" , row.names=FALSE)

###9 Not available Data

vec=c(rnorm(100))
mean(sqrt(vec))

>Unable to work because we produce Not a Number results, (imaginary quantities)

###10 Classes

date1=strptime( c("20160127","20160205","20151225"),format="%Y%m%d")
vec2 = c(0,3,4)
plot(x=date1,y=vec2,type = "p")

###11.2 For Loop

h=c(1:100)
vec=c()

for(i in h){
  if( i < 5 || i > 90)
  {
  vec[i]=i*10
  }
  else
  {  
  vec[i]=i*0.1
  }
}  
vec
###11.3 Writing your own functions

fun1= function(arg1)
{
  newVec=c()
  for(i in 1:length(arg1)){
    if( arg1[i] < 5 || arg1[i] > 90)
    {
      newVec[i]=arg1[i]*10
    }
    else
    {  
      newVec[i]=arg1[i]*0.1
    }
  }
  return (newVec)
}
vec5=c(1,2,3,6,9,91)
vec6=fun1(vec5)

#####Proof that last To-Do is slower
>R similarily to Mathlab is slower at computing for loops.
R also performs vector math much faster since it only needs to ask what type of data are in each vector (sees 2 things)
rather than each element in the vector(x things). This is known as vectorization and is core for new R programmers to learn in order
to make code more efficient.

test = c(1,2,3,4,5,90,91,77,43,2,1)

fun2= function(vec)
{
ifelse(vec < 5 | vec > 90, vec * 10, vec * 0.1)
}
fun2(test)

#install.packages("knitr")

#Sources
#http://www.noamross.net/blog/2014/4/16/vectorization-in-r--why.html
#http://rpubs.com/daspringate/vectorisation
#https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf
