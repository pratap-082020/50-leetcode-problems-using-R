# =====================================================
# CREATE Weather DATASET
# =====================================================

Weather <- data.frame(
  
  id = c(1, 2, 3, 4),
  
  recordDate = as.Date(c(
    "2015-01-01",
    "2015-01-02",
    "2015-01-03",
    "2015-01-04"
  )),
  
  temperature = c(10, 25, 20, 30)
  
)

# =====================================================
# VIEW DATASET
# =====================================================

Weather


library(dplyr)
Weather %>% mutate(
  pre_temprature = lag(temperature),
  status = ifelse(pre_temprature<temperature, "Y", "N")
) %>% filter(
  status == "Y"
) %>% select(
  id
)
