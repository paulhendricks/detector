library(generator)
library(detector)
context("detect()")

test_df <-
  data.frame(phone_number = r_phone_numbers(1000),
             email_address = r_email_addresses(1000),
             mixed = c(r_phone_numbers(500), r_email_addresses(500)),
             stringsAsFactors = FALSE)

test_that("Produces the correct output.", {
  expect_equal(detect(test_df), TRUE)
})

test_that("Produces the correct output type.", {
  expect_is(detect(test_df), "logical")
})

test_that("Produces the correct messages, warnings, and errors.", {
})

