context("test-assign_summary_type")
testthat::skip_on_cran()

test_that("auto-assign continuous: mtcars$hp", {
  expect_equal(
    assign_summary_type(
      data = mtcars, variable = "hp",
      class = class(mtcars$hp), summary_type = NULL, value = NULL
    ),
    "continuous"
  )
})
