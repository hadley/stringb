test_that("handles NA and empty matches", {
  out <- str_match(c(NA, "abc", "123", "12"), "(\\d)(\\d)(\\d?)")
  expect_equal(out[, 2], c(NA, NA, "1", "1"))
  expect_equal(out[, 4], c(NA, NA, "3", ""))
})
