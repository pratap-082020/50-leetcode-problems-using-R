#--------------------------------------------
# Create Tweets Dataset
#--------------------------------------------

tweets <- data.frame(
  
  tweet_id = c(1, 2),
  
  content = c(
    "Let us Code",
    "More than fifteen chars are here!"
  )
  
)

# View Dataset
tweets

library(dplyr)

tweets %>% mutate(
  len = nchar(content)
) %>% filter(
  len > 15
) %>% select(
  tweet_id
)
