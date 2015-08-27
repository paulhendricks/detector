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
  tests <-
    list("has_email" = has_email_addresses,
         "has_phone" = has_phone_numbers,
         "has_ssn" = has_national_identification_numbers)
  return(vapply(tests, function(test) test(.x), logical(1)))
}

#' @describeIn detect Method for factor vectors.
#' @export
detect.factor <- function(.x) {
  return(detect(as.character(.x)))
}

#' @describeIn detect Method for numeric vectors.
#' @export
detect.numeric <- function(.x) {
  return(detect(as.character(.x)))
}

#' @describeIn detect Method for data.frames.
#' @export
detect.data.frame <- function(.x) {
  temp <- data.frame(column_name = colnames(.x), stringsAsFactors = FALSE)
  temp[, "has_email_addresses"] <- unname(vapply(.x, has_email_addresses, logical(1)))
  temp[, "has_phone_numbers"] <- unname(vapply(.x, has_phone_numbers, logical(1)))
  temp[, "has_national_identification_numbers"] <- unname(vapply(.x, has_national_identification_numbers, logical(1)))
  return(temp)
}
