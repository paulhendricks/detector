#' Detect if a data object contains PII.
#'
#' @param .x A data object.
#' @return A logical value indicating if that data object contains PII.
#' @examples
#' # Examples
#' @export
detect <- function(.x) {
  UseMethod("detect")
}

#' @describeIn detect Method for character vectors.
#' @export
detect.character <- function(.x) {
  return(ldply(tests_nonnumeric, function(test) data.frame(case = test(.x), stringsAsFactors = FALSE), .id = "test"))
}

#' @describeIn detect Method for factor vectors.
#' @export
detect.factor <- function(.x) {
  return(detect(as.character(.x)))
}

#' @describeIn detect Method for numeric vectors.
#' @export
detect.numeric <- function(.x) {
  return(any(vapply(tests, function(test) test(.x), logical(1))))
}

detect_column <- function(column_name, .y) {
  message(paste0("Testing column: ", column_name))
  return(detect(.y[, column_name]))
}

#' @describeIn detect Method for data.frames.
#' @export
detect.data.frame <- function(.x) {



  return(any(vapply(names(.x), detect_column, .y = .x, logical(1))))
}

tests_nonnumeric <-
  list("has_email" = has_email_addresses,
       "has_phone" = has_phone_numbers,
       "has_ssn" = has_national_identification_numbers)

tests_numeric <-
  list("has_phone" = has_phone_numbers)
