#--------------------------------------------
# Create World Dataset
#--------------------------------------------

world <- data.frame(
  name = c("Afghanistan", "Albania", "Algeria", "Andorra", "Angola"),
  
  continent = c("Asia", "Europe", "Africa", "Europe", "Africa"),
  
  area = c(652230, 28748, 2381741, 468, 1246700),
  
  population = c(25500100, 2831741, 37100000, 78115, 20609294),
  
  gdp = c(
    20343000000,
    12960000000,
    188681000000,
    3712000000,
    100990000000
  )
  
)

# View Dataset
world


library(dplyr)

world %>% filter(
  area >= 3000000 | population >= 25000000
)
