# Assignment 1

# a. Creating a data frame to store the student data.
student_data <- data.frame(
  id = c(1,2,3,4,5),
  gender = c("Male","Female","Female","Female","Male"),
  age = c(16,15,15,16,15),
  score = c(48,43,37,49,37),
  grade = c("A+","A","B","A+","B"),
  passed = c(TRUE,TRUE,TRUE,TRUE,TRUE)
)

## To print Student Data - following 2 can be used.
print(student_data)
student_data

# b. Class of student_data
## 1. class() function is used to determine the class (data type) of an object. 
## 2. It returns a character vector containing the names of the classes to which the object belongs.
## 3. There are 2 types of classes: built-in and user-defined.
## 4. Whether an object belongs to a built-in class like numeric or character, or to a user-defined class, the `class()` function will return the name of the class to which the object belongs.
class(student_data)

# c. str() - Structure function
## 1. str() function is used to display the structure of an R object in a concise and readable format. 
## 2. It stands for "structure" and provides a quick way to get an overview of the internal structure of an R object, including its type, dimensions, and contents.
str(student_data)

# d. Calculate Mean, Median, and Standard Deviation
## In R, there are inbuilt functions to calculate Mean, Median and Standard Deviation
score_vec <- student_data$score
print(score_vec)
mean(score_vec)
median(score_vec)
sd(score_vec)

# e. Summary function
## 1. summary() is used for summarizing statistical properties of data.
## 2. It is used to generate summary statistics for a given object, typically a data frame, matrix, or vector.
## 3. It provides a concise overview of the data, including measures such as minimum, maximum, median, mean, and quartiles for numeric variables, and counts or frequencies for categorical variables.
summary(student_data)

# f. Calculate percentage of Students having above 40 marks
student_above40 <- sum(student_data$score >= 40)
print(student_above40)
percentage_student_above40 = (student_above40/5)*100
print(percentage_student_above40)

# g. Calculate percentage of Passed Students
student_passed <- sum(student_data$passed == TRUE)
print(student_passed)
percentage_student_passed = (student_passed/5)*100
print(percentage_student_passed)

# h. Find age of third student
student_age_vec <- student_data$age
print(student_age_vec[3])

# i. Female Students Scores
sum(student_data$gender == "Female")
#female_scores <- student_data[student_data$gender == "Female",]
female_scores <- student_data[student_data$gender == "Female", "score"]
print(female_scores)

# j. Convert "grade" into Factor
factor(student_data$grade)
grade_factor <- factor(student_data$grade, levels = c("A+","A","B"))
print(grade_factor)

# k. Print the student details having highest score.
max(student_data$score)

# l. Sorted Score
sorted_score <- sort(student_data$score)
print(sorted_score)
