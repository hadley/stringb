#' Detect presence/absence of pattern
#'
#' @param string Character vector of strings.
#' @param pattern A pattern to match. Can be:
#'   * A single string or [regex()], to use POSIX 1003.2 extended regular
#'     expression.
#'   * `fixed()` to use a fixed/literal matchi.
#'   * `perl()` to use a Perl-compatible regular expression.
#'
#'   Unlike stringr, `pattern` must be length 1; it will not be recycled to
#'   the same length as `string`.
#' @param negate If `TRUE`, return non-matching elements.
#' @export
str_detect <- function(string, pattern, negate = FALSE) {
  check_pattern(pattern)

  out <- grepl(pattern, string,
    fixed = is_fixed(pattern),
    perl = is_perl(pattern),
    ignore.case = ignore_case(pattern)
  )
  out[is.na(string)] <- NA

  if (negate) {
    !out
  } else {
    out
  }
}
