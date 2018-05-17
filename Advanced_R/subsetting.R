#Atomic vectors
#explore the different types of subsetting with a simple vector x
x<-c(2.1,4.2,3.3,5.4)
#positive integars return elements at the specified position:
x[c(3,1)]
x[order(x)]
#duplicated indices yield duplicated values
x[c(1,1)]
#real numbers are silently truncated to integers
x[c(2.1,2.9)]
#Nagetive integers omit elements at specified positions
x[-c(3,1)]
#logical vectors select elements where corresponding logical value is TRUE
x[c(TRUE,TRUE,FALSE,FALSE)]
x[x>3]
# the logical vector is shorter than the vector being subsetted, it will be recycled to be the same length
x[c(T,F)]
# a missing value in the index always yeilds a missing value in the output
x[c(T,T,NA,F)]
#nothing returns the original vector
x[]
#Zero returns a zero-length vector
x[0]
# character vectors
(y<-setNames(x,letters[1:4]))
y[c('d','c','a')]
y[c('a','a','a')]
#list
#matrices and arrays
a<-matrix(1:9, nrow = 3)
colnames(a)<-c('A','B','C')
a[1:2,]
a[c(T,F,T),c('B','A')]
a[0,-2]
(val<-outer(1:5,1:5,FUN = 'paste',sep=','))
vals<-outer(1:5,1:5,FUN = 'paste',sep=',')
select<-matrix(ncol=2,byrow =T,c(
  1,1,
  3,1,
  2,4))
select
vals[select]
#data frames
df<-data.frame(x=1:3,y=3:1,z=letters[1:3])
df
df[df$x==2,]
df[c(1,3),]
##select column from dataframe
df[c('x','z')]
df[,c('x','z')]
##there is an important difference is you select a single column: matrix subsetting simplifies by default, list subsetting does not
str(df['x'])
str(df[,'x'])
#S3 object
x<-1:5
x[NA]
x[NA_real_]
a<-list(a=1,b=2)
a
a[[1]]
a[['a']]
b<-list(a=list(b=list(c=list(d=1))))
b[[c('a','b','c','d')]]
b[['a']][['b']][['c']][['d']]
mtcars[[1]]
mtcars[['cyl']]
var<-'cyl'
mtcars$var
mtcars[[var]]
x<-list(abc=1)
x$a
x[['a']]
x<-1:4
str(x[5])
str(x[NA_real_])
str(x[NULL])
mod<-lm(mpg~wt,data = mtcars)
mod$df
mod$df.r
mod$df.residual
mod['df.residual']
mod[['df.residual']]
#subseting and assignment
x<-1:5
x[c(1,2)]<-2:3
x
x[-1]
4:1
x
c(1,1)
x[c(1,1)]<-2:3
x
x[c(T,F,NA)]
x
x[c(T,F,NA)]<-1
X
x
df<-data.frame(a=c(1,10,NA))
df
df$a[df$a<5]<-0
df$a
mtcars[]<-lapply(mtcars,as.integer)
mtcars<-lapply(mtcars,as.integer)
lapply(mtcars,as.integer)
x<-list(a=1,b=2)
x
x[['b']]<-NULL
x
str(x)
x<-c('m','f','u','f','f','m','m')
lookup<-c(m='Male',f='Female',u=NA)
x
lookup
lookup[x]
grade<-c(1,2,2,3,1)
info<-data.frame(grade=3:1,desc=c('Excellent','Good','Poor'),fail=c(F,F,T))
info
#using match
id<-match(grade,info$grade)
id
info[id,]
#using rownames
