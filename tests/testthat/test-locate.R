test_that("str_locate() handles NA and 0 length matches", {
  out <- str_locate(c(NA, "", "x", "xx", "xxx"), "x*")
  expect_equal(out[, "start"], c(NA, 1L, 1L, 1L, 1L))
  expect_equal(out[, "end"],   c(NA, 0:3))
})

test_that("str_locate_all() handles 0 length matches", {
  out <- str_locate_all(c(NA, ""), "x")
  expect_equal(out[[1]], cbind(start = NA_integer_, end = NA_integer_))
  expect_equal(out[[2]], cbind(start = integer(), end = integer()))
})
