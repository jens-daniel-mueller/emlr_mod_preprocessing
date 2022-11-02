# This script summarizes the central commands to work with code in this R project
# using the Workflowr package.
# For details please refer to:
# https://jdblischak.github.io/workflowr/articles/wflow-01-getting-started.html

# commit regular changes (locally) and rebuild site
# this takes only changed files into account
wflow_publish(all = TRUE, message = "included calculation of cstar variants")

# commit changes including _site.yml (locally) and rebuild site in the specified order
# you can also run this code with only some of the files. In this case remove the rebuild=TRUE command
wflow_publish(here::here(
  "analysis",
  c(
    "index.Rmd",
    "GLODAP_subset_A_monthly_CESM.Rmd",
    "Cant_AD_annual_all_models.Rmd",
    "Cant_CB_annual_all_models.Rmd",
    "Climatology_A_2007_all_models.Rmd",
    "co2_atm.Rmd",
    "GLODAP_subset_A_annual_all_models.Rmd",
    "surface_ocean.Rmd"
  )
),
message = "rerun incl Sea of Japan",
republish = TRUE)


wflow_publish(here::here(
  "analysis",
  c(
    "index.Rmd",
    "GLODAP_subset_A_annual_all_models.Rmd"
  )
),
message = "rerun subsetting all models")



# Push latest version to GitHub
wflow_git_push()
jens-daniel-mueller
