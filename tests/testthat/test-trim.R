test_that("can specify side", {
  expect_equal(str_trim(" x ", side = "both"), "x")
  expect_equal(str_trim(" x ", side = "left"), "x ")
  expect_equal(str_trim(" x ", side = "right"), " x")
})
