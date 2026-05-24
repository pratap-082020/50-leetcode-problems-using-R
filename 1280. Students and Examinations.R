# =====================================================
# CREATE Students DATASET
# =====================================================

Students <- data.frame(
  
  student_id = c(
    1,
    2,
    13,
    6
  ),
  
  student_name = c(
    "Alice",
    "Bob",
    "John",
    "Alex"
  )
  
)

# =====================================================
# CREATE Subjects DATASET
# =====================================================

Subjects <- data.frame(
  
  subject_name = c(
    "Math",
    "Physics",
    "Programming"
  )
  
)

# =====================================================
# CREATE Examinations DATASET
# =====================================================

Examinations <- data.frame(
  
  student_id = c(
    1,
    1,
    1,
    2,
    1,
    1,
    13,
    13,
    13,
    2,
    1
  ),
  
  subject_name = c(
    "Math",
    "Physics",
    "Programming",
    "Programming",
    "Physics",
    "Math",
    "Math",
    "Programming",
    "Physics",
    "Math",
    "Math"
  )
  
)

# =====================================================
# VIEW DATASETS
# =====================================================

Students

Subjects

Examinations

counts <- left_join(Students, Examinations, by ="student_id") %>% 
  group_by(student_id, student_name, subject_name) %>% 
  summarise(
    attended_exams = n()
  ) %>% filter(
    !is.na(student_id), !is.na(student_name), !is.na(subject_name)
  ) %>% ungroup(student_id, student_name, subject_name)


cross_join(Students, Subjects) %>% left_join(
  counts,
  by=c("student_id", "student_name", "subject_name")
)
