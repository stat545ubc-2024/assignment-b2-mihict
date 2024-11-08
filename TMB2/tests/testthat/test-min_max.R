test_that("min_max works", {
  # Test without NA values
  my_data_no_na <- c(4, 10, 6, 12)
  result_no_na <- min_max(my_data_no_na)
  expect_equal(result_no_na$min, 4)
  expect_equal(result_no_na$max, 12)

  result_no_na2 <- min_max(my_data_no_na, na.rm = TRUE)
  expect_equal(result_no_na2$min, 4)  # Check minimum
  expect_equal(result_no_na2$max, 12) # Check maximum

  # Test with NA values
  my_data_na <- c(4, 10, 6, 12, NA)
  result_na <- min_max(my_data_na)
  expect_true(is.na(result_na$min))  # Confirm minimum is NA
  expect_true(is.na(result_na$max))   # Confirm maximum is NA
  result_na2 <- min_max(my_data_na, na.rm = TRUE)
  expect_equal(result_na2$min, 4)  # Check minimum
  expect_equal(result_na2$max, 12) # Check maximum
})

test_that("min_max function displays an error for categorical input", {
  # Test with categorical data
  categorical_data <- c("a", "b", "c")
  expect_error(min_max(categorical_data), "Input must be a numeric vector, matrix, or data frame")
})

