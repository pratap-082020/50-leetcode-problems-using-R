#--------------------------------------------
# Create Visits Dataset
#--------------------------------------------

visits <- data.frame(
  
  visit_id = c(1, 2, 4, 5, 6, 7, 8),
  
  customer_id = c(23, 9, 30, 54, 96, 54, 54)
  
)

# View Dataset
visits


#--------------------------------------------
# Create Transactions Dataset
#--------------------------------------------

transactions <- data.frame(
  
  transaction_id = c(2, 3, 9, 12, 13),
  
  visit_id = c(5, 5, 5, 1, 2),
  
  amount = c(310, 300, 200, 910, 970)
  
)

# View Dataset
transactions



visits
transactions

left_join(
  visits,
  transactions,
  by = "visit_id"
) %>% filter(
  is.na(transaction_id)
) %>% group_by(customer_id) %>% mutate(
  count_no_trans = n()
) %>% select(customer_id, count_no_trans) %>% unique()

