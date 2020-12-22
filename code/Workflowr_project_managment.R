# This script summarizes the central commands to work with code in this R project
# using the Workflowr package.
# For details please refer to:
# https://jdblischak.github.io/workflowr/articles/wflow-01-getting-started.html

# commit regular changes (locally) and rebuild site
# this takes only changed files into account
wflow_publish(all = TRUE, message = "final cleaning and added zonal mean section")

# commit changes including _site.yml (locally) and rebuild site in the specified order
# you can also run this code with only some of the files. In this case remove the rebuild=TRUE command
wflow_publish(here::here(
  "analysis",
  c(
    "index.Rmd",
    "Climatology.Rmd",
    "GLODAP_subset.Rmd",
    "Random_subset.Rmd",
    "Cant_AB.Rmd",
    "read_CO2_atm.Rmd"
  )
),
message = "complete rebuild after jens revision",
republish = TRUE)


# Push latest version to GitHub
wflow_git_push()
jens-daniel-mueller
