
# myPackage

The goal of `myPackage` is to help users explore the mtcars dataset interactively through a Shiny app, allowing them to visualise relationships between car attributes, gain insights from the data, and understand how different variables relate to each other.

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

Interactive Exploration of the MTCARS Dataset

myPackage is an R package designed to help users explore the classic mtcars dataset interactively. It includes:

A cleaned dataset ready for analysis.

Shiny app for visualizing relationships between car attributes like MPG, horsepower, weight, and displacement.

Functions to compare variables and generate reproducible examples.

Vignettes to guide users through analysis workflows.

Whether you are learning R, teaching data science, or exploring automotive data, myPackage provides an intuitive interface and ready-to-use tools for interactive data exploration.
