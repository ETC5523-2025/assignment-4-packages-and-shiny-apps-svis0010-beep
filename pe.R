system("git rm okayPackage.Rproj")
system('git add .')
system('git commit -m "Remove redundant Rproj"')

system("git push origin main")

system("git status")

system("git pull --rebase origin main")

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
