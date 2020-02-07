test_that("returns logical vector", {
  expect_equal(str_detect(c(NA, "a", "b"), "a"), c(NA, TRUE, FALSE))
})

test_that("can use pattern modifiers", {
  expect_equal(str_detect("a", fixed(".")), FALSE)
  expect_equal(str_detect("a", regex("A", ignore_case = TRUE)), TRUE)
  expect_equal(str_detect("a", perl("(?i)A")), TRUE)
})

test_that("can negate results", {
  expect_equal(str_detect(c(NA, "a", "b"), "a", negate = TRUE), c(NA, FALSE, TRUE))
})
