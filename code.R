# Initialize git and link to GitHub
usethis::use_git()          # initialize git in the project
usethis::use_github()       # link to a GitHub repo


#install.packages("shinylive")
library(shinylive)

# Export the app to a static site folder
#setwd("path/to/volcano-demo")  # make sure you're in the project root
shinylive::export(".", "site")



# Add the exported site folder to git
usethis::use_git_ignore("site")  # optional if you want to ignore original files
system("git add site -f")        # force-add site folder if large
system('git commit -m "Add exported shinylive site"')
system("git push")
