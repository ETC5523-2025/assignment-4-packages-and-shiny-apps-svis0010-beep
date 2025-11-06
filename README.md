
# myPackage

The goal of `myPackage` is to help users explore the fwi dataset interactively through a Shiny app, allowing them to visualise relationships and trends of how fwi has changed over years and its impact on climate change for australians. 

## Installation

You can install the development version of `myPackage` from GitHub with:

```r
# Install devtools if not installed
install.packages("remotes")

# Install the package from GitHub
remotes::install_github("ETC5523-2025/assignment-4-packages-and-shiny-apps-svis0010-beep")
```
2) Load the package 

```r
library(myPackage)

```

3) Launch the interactive dashboard

```r
launch_app()
```

## Vignette

A detailed guide to using `myPackage` and its Shiny app can be found in the vignette:

[Getting Started with myPackage](https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-svis0010-beep/articles/introduction.html)

##myPackage
myPackage provides tools and an interactive Shiny dashboard to explore the Fire Weather Index (FWI) dataset for SE Australia. Users can visualize yearly FWI trends, examine extreme fire weather conditions over time, and gain insights into the relationship between climate variables and fire danger. The package includes cleaned data, plotting functions, and a fully interactive app for exploratory analysis, making it easy to explore historical fire risk patterns and understand long-term trends.
