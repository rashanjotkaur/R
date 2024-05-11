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


# Answers

## Assesement 3.1

### Answer 1
    A and C
    Explanation
    which(), match(), and %in% can all be used to subset the data. However, in this case the match() option uses capital letters, which don’t exist in our dataset, and one of the which() functions uses = instead of ==, which is incorrect.

### Answer 2
    B

