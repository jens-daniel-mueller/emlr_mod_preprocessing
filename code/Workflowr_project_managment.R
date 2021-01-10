# This script summarizes the central commands to work with code in this R project
# using the Workflowr package.
# For details please refer to:
# https://jdblischak.github.io/workflowr/articles/wflow-01-getting-started.html

# commit regular changes (locally) and rebuild site
# this takes only changed files into account
wflow_publish(all = TRUE, message = "revised depth level rounding")

# commit changes including _site.yml (locally) and rebuild site in the specified order
# you can also run this code with only some of the files. In this case remove the rebuild=TRUE command
wflow_publish(here::here(
  "analysis",
  c(
    "index.Rmd",
    "Climatology_A.Rmd",
    "Climatology_C.Rmd",
    "GLODAP_subset.Rmd",
    "Random_subset_A.Rmd",
    "Random_subset_C.Rmd",
    "Cant_AD.Rmd",
    "Cant_CB.Rmd",
    "read_CO2_atm.Rmd"
  )
),
message = "complete rebuild after add constant climate",
republish = TRUE)


# Push latest version to GitHub
wflow_git_push()
jens-daniel-mueller
