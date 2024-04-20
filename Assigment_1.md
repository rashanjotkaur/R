# Assignment: Exploring Student Data

Data Description: You have been given a dataset containing information about students. The dataset contains the following variables:
   - Student ID: Unique identifier for each student (numeric)
   - Gender: Gender of the student (Factor: Male or Female)
   - Age: Age of the student (numeric)
   - Score: Score obtained by the student in a test (numeric)
   - Grade: Grade obtained by the student (Factor: A, B, C, D, F)
   - Passed: Whether the student passed the test (Logical: TRUE or FALSE)

### Problem Statements 
   a. Create a data frame to store the student data. You can manually create this data frame using the provided information.  
   b. Use the `str()` function to examine the structure of the data frame. Describe the types of variables and their attributes.
   c. Calculate and print the following summary statistics for the 'Score' variable:
      - Mean score
      - Median score
      - Standard deviation of scores
   d. Use the `summary()` function to get a summary of the 'Grade' variable. Describe the distribution of grades.
   e. Explore the 'Passed' variable. Calculate the percentage of students who passed the test.
   f. Create a vector containing the ages of all students. Use indexing to extract the age of the third student in the vector.
   g. Use the `$` accessor to extract the scores of female students only.
   h. Convert the 'Grade' variable to a factor. Print the levels of the 'Grade' variable to verify the change.
