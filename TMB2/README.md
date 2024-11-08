
<!-- README.md is generated from README.Rmd. Please edit that file -->

# TMB2

<!-- badges: start -->
<!-- badges: end -->

The goal of TMB2 is to provide a function `min_max` to easily find the
minimum and maximum values in a numeric dataset. This function works
with vectors, matrices, and data frames, making it a flexible tool for
data analysis.

## Installation

You can install the development version of TMB2 from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("stat545ubc-2024/assignment-b2-mihict")
```

## Examples

This is a basic example which shows you how to use min_max to identify
the minimum and maximum values of a numeric vector with NA values:

``` r
library(TMB2)
my_data <- c(3, 5, 2, 8, 1, NA)
result1 <- min_max(my_data, na.rm = TRUE)
print(result1)
#> $min
#> [1] 1
#> 
#> $max
#> [1] 8
```

## License

This project is licensed under the MIT License. See the LICENSE file for
details.

## Citation

If you use TMB2 in your research, please cite the package as follows:

TMB2: A Simple R Package for Minimum and Maximum Values. (Year).
Author(s). Available at: <https://github.com/your-username/TMB2>
