#--------------------------------------------
# Create Employees Dataset
#--------------------------------------------

employees <- data.frame(
  
  id = c(1, 7, 11, 90, 3),
  
  name = c(
    "Alice",
    "Bob",
    "Meir",
    "Winston",
    "Jonathan"
  )
  
)

# View Dataset
employees


#--------------------------------------------
# Create EmployeeUNI Dataset
#--------------------------------------------

employeeUNI <- data.frame(
  
  id = c(3, 11, 90),
  
  unique_id = c(1, 2, 3)
  
)

# View Dataset
employeeUNI



employees
employeeUNI

left_join(employees, employeeUNI, by = "id") %>% select(
  name, unique_id
)


