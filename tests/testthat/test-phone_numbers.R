library(generator)
library(detector)
context("phone numbers")

test_that("Produces the correct output.", {
  expect_equal(is_phone_number("hello"), FALSE)
  expect_equal(is_phone_number(65884), FALSE)
  expect_equal(is_phone_number("111-333-5555"), TRUE)
  expect_equal(is_phone_number(1113335555), TRUE)
})

test_that("Produces the correct output type.", {
  expect_is(is_phone_number("hello"), "logical")
  expect_is(is_phone_number("hello@world.edu"), "logical")
  expect_is(is_phone_number("hello"), "logical")
  expect_is(is_phone_number(65884), "logical")
  expect_is(is_phone_number("111-333-5555"), "logical")
  expect_is(is_phone_number(1113335555), "logical")
})

test_that("Produces the correct errors.", {
})
