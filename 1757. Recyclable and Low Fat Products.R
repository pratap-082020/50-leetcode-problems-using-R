#--------------------------------------------
# Create Products Dataset
#--------------------------------------------

products <- data.frame(
  
  product_id = c(0, 1, 2, 3, 4),
  
  low_fats = c("Y", "Y", "N", "Y", "N"),
  
  recyclable = c("N", "Y", "Y", "Y", "N")
  
)

# View Dataset
products


library(dplyr)
products %>% filter(
  low_fats == "Y", recyclable == "Y"
)
