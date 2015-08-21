#' Test if a string is a social security number.
#'
#' Strictly works for only US social security numbers.
#'
#' @param .x A string or numeric vector.
#' @return A logical value indicating if that string is a social security number.
#' @examples
#' # Examples
#' is_social_security_number("hello") # FALSE
#' is_social_security_number(65884) # FALSE
#' is_social_security_number("111-333-5555") # TRUE
#' is_social_security_number(1113335555) # TRUE
#' @export
is_social_security_number <- function(.x) {
  .x <- stringr::str_trim(as.character(.x))
  return(stringr::str_detect(.x, "^?!000|666[0-8][0-9]{2}-?!00[0-9]{2}-?!0000[0-9]{4}$"))
}
