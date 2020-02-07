#' Replace matches with a pattern
#'
#' @inheritParams str_detect
#' @param replacement A string given replace. References of the form `\1`,
#'   `\2`, etc will be replaced with the contents of the respective matched
#'   group (created by `()`).
#' @export
str_replace <- function(string, pattern, replacement) {
  check_pattern(pattern)

  sub(pattern, replacement, string,
    fixed = is_fixed(pattern),
    perl = is_perl(pattern),
    ignore.case = ignore_case(pattern)
  )
}

#' @rdname str_replace
#' @export
str_replace_all <- function(string, pattern, replacement) {
  check_pattern(pattern)

  gsub(pattern, replacement, string,
    fixed = is_fixed(pattern),
    perl = is_perl(pattern),
    ignore.case = ignore_case(pattern)
  )
}
