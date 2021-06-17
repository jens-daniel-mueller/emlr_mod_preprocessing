# This script summarizes the central commands to work with code in this R project
# using the Workflowr package.
# For details please refer to:
# https://jdblischak.github.io/workflowr/articles/wflow-01-getting-started.html

# commit regular changes (locally) and rebuild site
# this takes only changed files into account
wflow_publish(all = TRUE, message = "derive globally integrated scaling factor")

# commit changes including _site.yml (locally) and rebuild site in the specified order
# you can also run this code with only some of the files. In this case remove the rebuild=TRUE command
wflow_publish(here::here(
  "analysis",
  c(
    "index.Rmd",
    "Climatology_A.Rmd",
    "Climatology_C.Rmd",
    "GLODAP_subset_A.Rmd",
    "GLODAP_subset_A_2021_annual.Rmd",
    "GLODAP_subset_A_2021.Rmd",
    "GLODAP_subset_C.Rmd",
    "GLODAP_subset_C_2021.Rmd",
    "Random_subset_A.Rmd",
    "Random_subset_C.Rmd",
    "Cant_AD.Rmd",
    "Cant_CB.Rmd",
    "read_CO2_atm.Rmd",
    "surface_ocean.Rmd"
  )
),
message = "rerun all with surface ocean data",
republish = TRUE)


# Push latest version to GitHub
wflow_git_push()
jens-daniel-mueller
