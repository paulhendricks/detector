#' Test if a string is an e-mail address.
#'
#' @param .x A character vector.
#' @return A logical value indicating if that string is an e-mail address.
#' @examples
#' # Examples
#' is_email_address("hello") # FALSE
#' is_email_address("hello@@world.edu") # TRUE
#' @export
is_email_address <- function(.x) {
  return(stringr::str_detect(.x, "^[[:alnum:].-]+@[[:alnum:].-]+$"))
}

#' Test if a character vector has any e-mail addresses.
#'
#' @param .x A character vector.
#' @return A logical value indicating if that string has any e-mail addresses.
#' @examples
#' # Examples
#' @export
has_email_addresses <- function(.x) {
  result <- any(vapply(.x, is_email_address, logical(1)))
  if(result) message("E-mail addresses possibly detected.")
  return(result)
}
