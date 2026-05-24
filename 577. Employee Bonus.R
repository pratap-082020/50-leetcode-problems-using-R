# =====================================================
# CREATE Employee DATASET
# =====================================================

Employee <- data.frame(
  
  empId = c(3, 1, 2, 4),
  
  name = c(
    "Brad",
    "John",
    "Dan",
    "Thomas"
  ),
  
  supervisor = c(
    NA,
    3,
    3,
    3
  ),
  
  salary = c(
    4000,
    1000,
    2000,
    4000
  )
  
)

# =====================================================
# CREATE Bonus DATASET
# =====================================================

Bonus <- data.frame(
  
  empId = c(2, 4),
  
  bonus = c(
    500,
    2000
  )
  
)

# =====================================================
# VIEW DATASETS
# =====================================================

Employee

Bonus

left_join(Employee, Bonus, by="empId") %>% filter(
  bonus < 1000 | is.na(bonus)
) %>% select(name, bonus)
