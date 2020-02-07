test_that("returns logical vector", {
  expect_equal(str_detect(c(NA, "a", "b"), "a"), c(NA, TRUE, FALSE))
})

test_that("can negate results", {
  expect_equal(str_detect(c(NA, "a", "b"), "a", negate = TRUE), c(NA, FALSE, TRUE))
})
