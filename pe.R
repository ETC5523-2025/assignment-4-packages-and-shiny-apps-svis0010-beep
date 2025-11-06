system("git rm okayPackage.Rproj")
system('git add .')
system('git commit -m "Remove redundant Rproj"')

system("git push origin main")

system("git status")

system("git pull --rebase origin main")

system("git add .")
system('git commit -m "Add FWI dataset, dataset documentation, and update package"')
system("git push origin main")

system("git rebase --continue")



system("git rebase --continue")


system("git rebase --abort")
system("git add README.md")
system('git commit -m "Update README with cleaned content"')
system("git pull origin main --allow-unrelated-histories")
system("git push origin main")



# Stage the README
system("git add README.md")

# Commit your local changes
system('git commit -m "Update README with cleaned content"')

# Force push to GitHub
system("git push origin main --force")


system("git add vignettes/introduction.Rmd")
system("git add vignettes/imgs/vigimg.png")

system("git commit -m 'Add vignette with image for mtcars shiny app'")
system("git push origin main")


system("git status")

system("git push origin main --force")

system("git branch")
system("git merge --abort")

system("git add .")
system('git commit -m "Stage all local changes to resolve merge"')
system("git rm okayPackage.Rproj")
system("git add .")
system('git commit -m "Remove redundant okayPackage.Rproj"')
system("git push origin main")

library(pkgdown)
pkgdown::build_site()

system("git add .")
system("git commit -m 'Add pkgdown site'")
system("git push origin main")

system("git add README.md")

system("git status")

system("git push origin main")

system('git commit -m "Update README"')
system("git push origin main")
system("git commit -m 'Update README with installation instructions and pkgdown homepage'")

system("git add README.md")

system('git commit -m "Final update to README with installation and dashboard instructions"')

system("git push origin main")

# Make sure you are on main
system("git checkout main")

# Add and commit any remaining changes (if any)
system("git add .")
system('git commit -m "Prepare docs for GitHub Pages"')

# Push your main branch just in case
system("git push origin main")

# Now push the docs folder to gh-pages branch
system("git subtree push --prefix docs origin gh-pages")
system("git subtree push --prefix docs origin gh-pages")

pkgdown::build_site()
system("git add docs")
system('git commit -m "Update pkgdown site with latest README and vignettes"')
system("git push origin main")
system("git subtree push --prefix docs origin gh-pages")
