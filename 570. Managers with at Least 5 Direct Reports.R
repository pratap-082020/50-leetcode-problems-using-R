# =====================================================
# CREATE Employee DATASET
# =====================================================

Employee <- data.frame(
  
  id = c(
    101,
    102,
    103,
    104,
    105,
    106
  ),
  
  name = c(
    "John",
    "Dan",
    "James",
    "Amy",
    "Anne",
    "Ron"
  ),
  
  department = c(
    "A",
    "A",
    "A",
    "A",
    "A",
    "B"
  ),
  
  managerId = c(
    NA,
    101,
    101,
    101,
    101,
    101
  )
  
)

# =====================================================
# VIEW DATASET
# =====================================================

Employee

Employee %>% group_by(managerId) %>% 
  summarise(
    reporties = n()
  ) %>% filter(reporties>=5) %>% select(managerId) %>% 
  inner_join(
    Employee,
    by = c("managerId"="id")
  ) %>% select(name)
