# =====================================================
# CREATE Activity DATASET
# =====================================================

Activity <- data.frame(
  
  machine_id = c(
    0, 0,
    0, 0,
    1, 1,
    1, 1,
    2, 2,
    2, 2
  ),
  
  process_id = c(
    0, 0,
    1, 1,
    0, 0,
    1, 1,
    0, 0,
    1, 1
  ),
  
  activity_type = c(
    "start", "end",
    "start", "end",
    "start", "end",
    "start", "end",
    "start", "end",
    "start", "end"
  ),
  
  timestamp = c(
    0.712,
    1.520,
    3.140,
    4.120,
    0.550,
    1.550,
    0.430,
    1.420,
    4.100,
    4.512,
    2.500,
    5.000
  )
  
)

# =====================================================
# VIEW DATASET
# =====================================================

Activity


Activity %>% group_by(
  machine_id, process_id
) %>% mutate(
  lag_timestamp = lag(timestamp)
) %>% filter(!is.na(lag_timestamp)) %>% mutate(
  difference = timestamp - lag_timestamp
) %>% ungroup(machine_id, process_id) %>% group_by(machine_id) %>% summarise(
  processing_time = mean(difference)
)
