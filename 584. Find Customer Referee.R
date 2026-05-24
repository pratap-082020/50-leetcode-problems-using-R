#--------------------------------------------
# Create Customer Dataset
#--------------------------------------------

customer <- data.frame(
  
  id = c(1, 2, 3, 4, 5, 6),
  
  name = c("Will", "Jane", "Alex", "Bill", "Zack", "Mark"),
  
  referee_id = c(NA, NA, 2, NA, 1, 2)
  
)

# View Dataset
customer


library(dplyr)
customer %>% filter(
  referee_id != 2 | is.na(referee_id)
) %>% select(
  name
)
