library(detector)
context("is_email_address()")

test_that("Produces the correct output.", {
  expect_equal(is_email_address("hello"), FALSE)
  expect_equal(is_email_address("hello@world.edu"), TRUE)
})

test_that("Produces the correct output type.", {
  expect_is(is_email_address("hello"), "logical")
  expect_is(is_email_address("hello@world.edu"), "logical")
})

test_that("Produces the correct errors.", {
})

