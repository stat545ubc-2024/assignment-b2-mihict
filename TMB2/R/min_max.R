#' Identify Minimum and Maximum Values
#'
#' This function identifies the minimum and maximum values in a numeric dataset
#'
#' @param x A numeric vector, matrix, or data frame from which to find the
#' minimum and maximum values.
#' @param na.rm A logical value indicating whether to remove `NA` values before
#' computation. Defaults to `FALSE`.
#' @param ... Additional arguments passed to methods, if applicable.
#' @return A list containing the minimum and maximum values.
#' @examples
#' # Example usage
#' my_data <- c(3, 5, 2, 8, 1, NA)
#' result <- min_max(my_data)
#' print(result)
#' @export
min_max <- function(x, na.rm=FALSE, ...) {
  if (!is.numeric(x)) {
    stop("Input must be a numeric vector, matrix, or data frame")
  }
  min_value <- min(x, na.rm = na.rm)
  max_value <- max(x, na.rm = na.rm)
  return(list(min = min_value, max = max_value))}


