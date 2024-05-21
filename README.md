
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sensometrics

{sensometrics} is a demo package for Sensory Analysis, used for the
tutorial ‘Create automatic and reproducible sensory reports with Quarto’
at Sensometrics, Paris, June 2024.

### Installation

``` r
remotes::install_github("ThinkR-open/sensometrics")
```

### Usage

``` r
# Create a temporary directory
my_temp_dir <- tempfile()
dir.create(my_temp_dir)

# Create the sensory report
report <- create_report(
  path_to_data_folder = "data/20240425",
  output_dir = my_temp_dir
)

# Open the sensory report
browseURL(
  file.path(
    report$output_dir_report, 
    report$output_file_report
  )
)

# Delete temporary directory
unlink(my_temp_dir, recursive = TRUE)
```
