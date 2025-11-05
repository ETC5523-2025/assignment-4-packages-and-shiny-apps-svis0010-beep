
# Load raw dataset
raw_data <- mtcars

# Clean (trivial here)
clean_data <- raw_data

# Save cleaned dataset for package
usethis::use_data(clean_data, overwrite = TRUE)

