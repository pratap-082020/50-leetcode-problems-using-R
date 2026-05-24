# =====================================================
# CREATE Signups DATASET
# =====================================================

Signups <- data.frame(
  
  user_id = c(
    3,
    7,
    2,
    6
  ),
  
  time_stamp = as.POSIXct(c(
    "2020-03-21 10:16:13",
    "2020-01-04 13:57:59",
    "2020-07-29 23:09:44",
    "2020-12-09 10:39:37"
  ))
  
)

# =====================================================
# CREATE Confirmations DATASET
# =====================================================

Confirmations <- data.frame(
  
  user_id = c(
    3,
    3,
    7,
    7,
    7,
    2,
    2
  ),
  
  time_stamp = as.POSIXct(c(
    "2021-01-06 03:30:46",
    "2021-07-14 14:00:00",
    "2021-06-12 11:57:29",
    "2021-06-13 12:58:28",
    "2021-06-14 13:59:27",
    "2021-01-22 00:00:00",
    "2021-02-28 23:59:59"
  )),
  
  action = c(
    "timeout",
    "timeout",
    "confirmed",
    "confirmed",
    "confirmed",
    "confirmed",
    "timeout"
  )
  
)

# =====================================================
# VIEW DATASETS
# =====================================================

Signups

Confirmations



left_join(Signups, Confirmations, by="user_id") %>% filter(
  action == "timeout"
) %>% group_by(user_id) %>% summarise(
  timeout_cnt = n()
)


left_join(Signups, Confirmations, by="user_id") %>% filter(
  action == "confirmed"
) %>% group_by(user_id) %>% summarise(
  timeout_cnt = n()
)

