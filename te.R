install.packages("readxl")
library(readxl)
library(usethis)
mydata <- read_excel("data-raw/fwi.xlsx")
usethis::use_data(mydata, overwrite = TRUE)
usethis::use_data(fwi, overwrite = TRUE)

devtools::document()   # creates documentation
devtools::load_all()
