install.packages("pkgdown")
library(pkgdown)
pkgdown::build_site()


system("git add docs")
system('git commit -m "Add pkgdown site"')
system("git push")

system('git config --global user.name "Siddhi Vispute"')
system('git config --global user.email "svis0010@student.monash.edu"')
system("git pull origin main --allow-unrelated-histories")
