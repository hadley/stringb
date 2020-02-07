#' Detect presence/absence of pattern
#'
#' @param string Character vector of strings.
#' @param pattern A regular expression.
#' @param negate If `TRUE`, return non-matching elements.
#' @export
str_detect <- function(string, pattern, negate = FALSE) {
  out <- grepl(pattern, string)
  out[is.na(string)] <- NA

  if (negate) {
    !out
  } else {
    out
  }
}
