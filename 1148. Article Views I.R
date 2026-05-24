#--------------------------------------------
# Create Views Dataset
#--------------------------------------------

views <- data.frame(
  
  article_id = c(1, 1, 2, 2, 4, 3, 3),
  
  author_id = c(3, 3, 7, 7, 7, 4, 4),
  
  viewer_id = c(5, 6, 7, 6, 1, 4, 4),
  
  view_date = as.Date(c(
    "2019-08-01",
    "2019-08-02",
    "2019-08-01",
    "2019-08-02",
    "2019-07-22",
    "2019-07-21",
    "2019-07-21"
  ))
  
)

# View Dataset
views

library(dplyr)

views %>% filter(
  author_id == viewer_id 
) %>% select(
  author_id
) %>% unique() %>% arrange(author_id)
  