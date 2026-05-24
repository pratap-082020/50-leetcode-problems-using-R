#--------------------------------------------
# Create Sales Dataset
#--------------------------------------------

sales <- data.frame(
  
  sale_id = c(1, 2, 3),
  
  product_id = c(100, 100, 200),
  
  year = c(2008, 2009, 2011),
  
  quantity = c(10, 12, 15),
  
  price = c(5000, 5000, 9000)
  
)

# View Dataset
sales


#--------------------------------------------
# Create Product Dataset
#--------------------------------------------

product <- data.frame(
  
  product_id = c(100, 200, 300),
  
  product_name = c(
    "Nokia",
    "Apple",
    "Samsung"
  )
  
)

# View Dataset
product


sales
product


left_join(
  sales,
  product,
  by = "product_id"
) %>% select(
  product_name, year, price
)
