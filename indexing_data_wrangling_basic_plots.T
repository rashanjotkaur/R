library(dslabs)
library(dplyr)
data("murders")

states_vec <- murders$state
pop_vec <- murders$population
murder_count_vec <- murders$total

# Problem: We want to move to safe state in West region of country
murder_rate_vec <- (murder_count_vec/pop_vec)*100000
murder_rate_vec
index_1 <- murder_rate_vec <= 0.71
states_1 <- murders$state[index_1]
states_1
index_2 <- murders$region == "West"
states_2 <- murders$state[index_2]
states_2
index <- index_1 == TRUE & index_2 == TRUE
states <- murders$state[index]
states


# match() funtion
# Find murder rate for New York, Florida, and Texas
x <- c("New York", "Florida", "Texas")
positions <- match(x, murders$state)
positions
murder_rate_vec[positions]


# %in%
# Check if Boston, Dakota, and Washington are states or not
v1 <- c("Boston", "Dakota", "Washington")
v2 <- murders$state
v <- v1 %in% v2
v

# Finding "Massachusetts" in State
murders$state
murders |> filter(murders$state == "Massachusetts")
index <- which(murders$state == "Massachusetts")
murders[index]
c("Massachusetts") %in% murders$state
which(murders$state = "Massachusetts")


target_state <- c("Massachusetts","Kansas","Toronto","Illinois","Boston")
# using %in% 
ind <- !target_state %in% murders$state
ind
#using match() function
ind <- match(!target_state,murders$state)
ind


# Assesment 3 - indexing_data_wrangling_basic_plots
data("heights")
options(digits = 3)    # report 3 significant digits for all answers

heights
names(heights)

# Question 1
avg_height <- mean(heights$height)
avg_height
ind <- heights$height > avg_height
ind
## no. of individuals above average height
sum(ind)

# Question 2
ind <- (heights$height > avg_height) & (heights$sex == "Female")
ind
## no. of individuals above average height and female
sum(ind)

# Question 3
ind <- heights$sex == "Female"
ind
## no. of individuals that are females
no_of_females <- sum(ind)
total <- length(heights$height)
total
## fraction of female population
prop_female <- no_of_females/total
prop_female

# Question 4
## Que 4a: Minimum height
min_height <- min(heights$height)
min_height
## Que 4b:index of first individual with minimum height
ind <- match(c(50),heights$height)
ind
## Que 4c:
heights[ind,]
heights[ind,]$sex

# Question 5
## Que 5a: Maximum height
max_height <- max(heights$height)
max_height
## Que 5b: integer values b/w min and max height
sample_integers <- as.integer(min_height):as.integer(max_height)
sample_integers
logical_vec_integers <- sample_integers %in% heights$height
logical_vec_integers
sample_integers[logical_vec]
## Que 5c: how many heights that are not integers
logical_vec_not_integers <- !sample_integers %in% heights$height
logical_vec_not_integers 
sum(logical_vec_not_integers)

# Question 6
heights2 <- heights %>% mutate(ht_cm=height*2.54)
heights2
heights2[18,]
## Que 6a: height of 18th individual in cms
heights2[18,]$ht_cm
## Que 6b: mean height in cms
mean(heights2$ht_cm)

# Question 7
## Que 7a: no. of females in heights2 dataset
female_heights_df <- heights2 %>% filter(sex == "Female")
nrow(female_heights_df)
## Que 7b: mean height of females in cms
heights2 %>% filter(sex == "Female") %>% group_by(sex) %>% summarize(mean_female_height = mean(ht_cm)) %>% pull(mean_female_height)

# Question 8
data(olive)
head(olive)
names(olive)
## Que 8a: 
with(olive, plot(palmitic,palmitoleic))

# Question 9
with(olive, hist(eicosenoic))

# Question 10
with(olive, boxplot(palmitic~region))
# To get the median and standard deviation of palmitic as per regions
olive %>% group_by(region) %>% summarize(median = median(palmitic), standard_deviation = sd(palmitic))
