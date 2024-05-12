# Assesment 3 - Indexing, Data Wrangling, Plots

## Assesment 3.1

### Question 1
    Which line of code will successfully filter the murders dataset to only show Massachusetts? Note: Assume all state names are not capitalized in the dataset.
    Select ALL that apply.
      A. which(murders$state == “massachusetts”)
      B. match(c(“Massachusetts”), murders$state)
      C. c(“massachusetts”) %in% murders$state
      D. which(murders$state = “massachusetts”)

### Question 2
    Which line of code will return TRUE for elements of vector ind that are missing from the murders dataset?
      A. ind %in% murders$state
      B. !ind %in% murders$state
      C. ind !%in% murders$state
      D. !match(ind, murders$state)
      E. match(!ind, murders$state)


## Assesment 3

    For questions 1-8, load the dslabs dataset heights:
        library(dslabs)
        data(heights)
        options(digits = 3)    # report 3 significant digits for all answers

### Question 1
    First, determine the average height in this dataset. Then create a logical vector ind with the indices for those individuals who are above average height. How many individuals in the dataset are above average height?
  
### Question 2
    How many individuals in the dataset are above average height and are female?
  
### Question 3
    What proportion of individuals in the dataset are female? Report 3 significant digits.

### Question 4
    This question takes you through three steps to determine the sex of the individual with the minimum height.

    Question 4a
    Determine the minimum height in the heights dataset.
    
    Question 4b
    Use the match() function to determine the index of the first individual with the minimum height.
  
    Question 4c
    Subset the sex column of the dataset by the index in 4b to determine the individual’s sex. Select an option
 
### Question 5
    This question takes you through three steps to determine how many of the integer height values between the minimum and maximum heights are not actual heights of individuals in the heights dataset.

    Question 5a
    Determine the maximum height. Report 3 significant digits.

    Question 5b
    Which integer values are between the maximum and minimum heights? For example, if the minimum height is 10.2 and the maximum height is 20.8, your answer should be x <- 11:20 to capture the integers in between those values. (If either the maximum or minimum height are integers, include those values too.)

    Write code to create a vector x that includes the integers between the minimum and maximum heights in this dataset (as numbers).
    There are multiple ways to solve this problem, but the grader expects you to use the format in the problem description. Your answer should have numbers and a colon (:), and it should not use other functions.

    Question 5c
    How many of the integers in x are NOT heights in the dataset? Use the sum() and %in% functions in addition to the ! operator.

 
### Question 6
    Using the heights dataset, create a new column of heights in centimeters named ht_cm. Recall that 1 inch = 2.54 centimeters. Save the resulting dataset as heights2.

    Question 6a
    What is the height in centimeters of the 18th individual (index 18)?
  
    Question 6b
    What is the mean height in centimeters?
  
### Question 7
    Create a data frame females by filtering the heights2 data to contain only female individuals.

    Question 7a
    How many females are in the heights2 dataset?
 
    Question 7b
    What is the mean height of the females in centimeters?
  
### Question 8
    The olive dataset in dslabs contains composition in percentage of eight fatty acids found in the lipid fraction of 572 Italian olive oils:
        library(dslabs)
        data(olive)
        head(olive)

    Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. What relationship do you see?
        A. There is no relationship between palmitic and palmitoleic.
        B. There is a positive linear relationship between palmitic and palmitoleic.
        C. There is a negative linear relationship between palmitic and palmitoleic.
        D. There is a positive exponential relationship between palmitic and palmitoleic.
        E. There is a negative exponential relationship between palmitic and palmitoleic.

### Question 9
    Create a histogram of the percentage of eicosenoic acid in olive. Which of the following is true?
        A. The most common value of eicosenoic acid is below 0.05%.
        B. The most common value of eicosenoic acid is greater than 0.5%.
        C. The most common value of eicosenoic acid is around 0.3%.
        D. There are equal numbers of olive oils with eicosenoic acid below 0.05% and greater than 0.5%.

### Question 10
    Make a boxplot of palmitic acid percentage in olive with separate distributions for each region. Which region has the highest median palmitic acid percentage?
    Select an option Which region has the most variable palmitic acid percentage?



# Answers

## Assesement 3.1

    1. A and C
    Explanation
    which(), match(), and %in% can all be used to subset the data. However, in this case the match() option uses capital letters, which don’t exist in our dataset, and one of the which() functions uses = instead of ==, which is incorrect.
    2. B

## Assesement 3

    1. 532
    2. 31
    3. 0.227
    4. 50, 1032, Male
    5. 82.7,  [50 51 52 53 54 55 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81],  3
    6. 163, 174
    7. 238, 165
    8. B
    9. A
    10. Southern Italy
