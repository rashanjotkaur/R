library(dplyr)
library(dslabs)
library(data.table)

data(murders)

murders <- setDT(murders)
murders

# Selecting in data.table
# Method 1: Similar to subsetting Matrices
murders[,c("state","population")]
# Method 2: .()
murders[,.(state,population)] |> head()

# Adding column in data.table
# Using := (colon equal) function
murders[,rate:=total/population*100000] |> head()
# Adding multiple columns
murders[,":="(rate=total/population*100000,rank=rank(population))] |> top_n(10)

# Filtering rows 
# Also, similar to subsetting
murders[rate<0.7] |> head()

# Group By
murders[rate<0.7, .(state, rate), by=region] |> head()

# Summarize
murders[,.(max_rate = max(rate)), by = region] 

# Calling function in data.table to calculate quantiles
calc_quantiles <- function(data){
  qs <- quantile(data, c(0,0.25,0.5,0.75,1))
  df <- data.frame(
    min_rate = qs[1],
    first_quartile_rate = qs[2],
    median_rate = qs[3],
    third_quartile_rate = qs[4],
    max_rate = qs[5]
  )
  return (df)
}
murders[,calc_quantiles(rate)]
