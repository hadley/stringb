test_that("can replace one or all matches", {
  expect_equal(str_replace("aaa", "a", "A"), "Aaa")
  expect_equal(str_replace_all("aaa", "a", "A"), "AAA")
})
