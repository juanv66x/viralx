# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(magrittr, dplyr, usethis, data.table, here)

# clean data ----
train2 <- read.csv(here::here("data-raw", "train2.csv"))

# write data in correct format to data folder ----
usethis::use_data(train2, overwrite = TRUE)
