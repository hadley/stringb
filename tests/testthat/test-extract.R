test_that("str_extract() handles NA and empty matches", {
  expect_equal(
    str_extract(c(NA, "", "x"), "x"),
    c(NA, NA, "x")
  )
})

test_that("str_extract_all() pulls out multiple matches", {
  expect_equal(
    str_extract_all(c(NA, "", "x", "x x"), "x"),
    list(NA_character_, character(), "x", c("x", "x"))
  )
})
