# Assignment: Assessment of R Basics, Functions and Data Types

# Q1: What are the two solutions to 2x^2-x-4=0?
a <- 2
b <- -1
c <- -4
D <- b^2 - 4*a*c
sol_1 <- (-b + sqrt(D))/(2*a)
sol_2 <- (-b - sqrt(D))/(2*a)
print(sol_1)
print(sol_2)
# Ans: 1.686141 and -1.186141


# Q2: Use R to compute log base 4 of 1024
print(log(1024, base=4))
## Ans: 5

# Q3a:How many rows are in the dataset named movielens (inbuilt)?
library(dslabs)
data("movielens")
str(movielens)
## Ans: 100004

# Q3b: How many different variables are in the dataset named movielens (inbuilt)?
str(movielens)  
## Ans: 7

# Q3c: What is the variable type of title in the dataset named movielens (inbuilt) ?
str(movielens)
## Ans: G. It is a character (chr) variable

# Q3d: What is the variable type of genres in the dataset named movielens (inbuilt)?
str(movielens)
## Ans: F. It is a factor (Factor) variable 

# Q4: How many levels are in the factor genres in the movielens data frame without using str() or levels() function?
genres_vec <- movielens$genres
nlevels(genres_vec)
## Ans: 901
   
