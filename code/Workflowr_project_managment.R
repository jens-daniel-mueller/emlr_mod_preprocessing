# This script summarizes the central commands to work with code in this R project
# using the Workflowr package.
# For details please refer to:
# https://jdblischak.github.io/workflowr/articles/wflow-01-getting-started.html

# commit regular changes (locally) and rebuild site
# this takes only changed files into account
wflow_publish(all = TRUE, message = "plot to pdf")

# commit changes including _site.yml (locally) and rebuild site in the specified order
# you can also run this code with only some of the files. In this case remove the rebuild=TRUE command
wflow_publish(here::here(
  "analysis",
  c(
    "index.Rmd",
    "Climatology_A.Rmd",
    "NorESM_Climatology_A.Rmd",
    "FESOM_REcoM_LR_Climatology_A.Rmd",
    "ORCA025_Climatology_A.Rmd",
    "Climatology_C.Rmd",
    "GLODAP_subset_A.Rmd",
    "GLODAP_subset_A_2021.Rmd",
    "GLODAP_subset_A_2021_annual.Rmd",
    "NorESM_GLODAP_subset_A_2021_annual.Rmd",
    "FESOM_REcoM_LR_GLODAP_subset_A_2021_annual.Rmd",
    "ORCA025_GLODAP_subset_A_2021_annual.Rmd",
    "GLODAP_subset_C.Rmd",
    "GLODAP_subset_C_2021.Rmd",
    "Random_subset_A.Rmd",
    "Random_subset_A_2021_annual.Rmd",
    "NorESM_Random_subset_A_2021_annual.Rmd",
    "FESOM_REcoM_LR_Random_subset_A_2021_annual.Rmd",
    "ORCA025_Random_subset_A_2021_annual.Rmd",
    "Random_subset_C.Rmd",
    "Random_subset_C_2021.Rmd",
    "Cant_AD.Rmd",
    "NorESM_Cant_AD.Rmd",
    "FESOM_REcoM_LR_Cant_AD.Rmd",
    "ORCA025_Cant_AD.Rmd",
    "Cant_CB.Rmd",
    "read_CO2_atm.Rmd",
    "surface_ocean.Rmd"
  )
),
message = "rerun all with latest version of GLODAP2021",
republish = TRUE)

wflow_publish(here::here(
  "analysis",
  c(
    "GLODAP_subset_A_2021.Rmd"
  )
),
message = "subset excl arctic")


# Push latest version to GitHub
wflow_git_push()
jens-daniel-mueller
