#' Test if a string is a phone number.
#'
#' Strictly works for only US phone numbers.
#'
#' @param .x A string or numeric vector.
#' @return A logical value indicating if that string is a phone number.
#' @examples
#' # Examples
#' is_phone_number("hello") # FALSE
#' is_phone_number(65884) # FALSE
#' is_phone_number("111-333-5555") # TRUE
#' is_phone_number(1113335555) # TRUE
#' @export
is_phone_number <- function(.x) {
  .x <- stringr::str_trim(as.character(.x))
  return(stringr::str_detect(.x, "\\d{3}?[.-]? *\\d{3}[.-]? *[.-]?\\d{4}"))
}

#' Test if a character vector has any phone numbers.
#'
#' @param .x A character vector.
#' @return A logical value indicating if that string has any phone numbers.
#' @examples
#' # Examples
#' @export
has_phone_numbers <- function(.x) {
  result <- any(vapply(.x, is_phone_number, logical(1)))
  if(result) message("Phone numbers possibly detected.")
  return(result)
}