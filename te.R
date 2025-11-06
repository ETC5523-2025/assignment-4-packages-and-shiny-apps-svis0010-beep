install.packages("readxl")
library(readxl)
library(usethis)
mydata <- read_excel("data-raw/fwi.xlsx")
usethis::use_data(mydata, overwrite = TRUE)
usethis::use_data(fwi, overwrite = TRUE)

devtools::document() # creates documentation
devtools::load_all()

devtools::install()


devtools::document()  # Update documentation
devtools::install()

library(myPackage)
launch_app()
system("git add .")
system('git commit -m "Update FWI dataset and Shiny app"')
system("git push origin main")
