test_that("start and end are vectorised", {
  expect_equal(str_sub(c("ab", "cde"), -1, -1), c("b", "e"))
  expect_equal(str_sub(c("ab", "cde"), 1, c(1, 2)), c("a", "cd"))
})

test_that("start and end are recycled", {
  expect_equal(str_sub(c("ab", "cd"), 2, 2), c("b", "d"))
  expect_equal(str_sub(character(), 1), character())

  # Can't recycle anything apart from length 1
  expect_error(str_sub("a", 1:2), "`start`")
})

test_that("can pass start a matrix", {
  expect_equal(str_sub("abcdefg", cbind(3, 5)), "cde")
})
