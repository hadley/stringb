#' Control pattern behaviour
#'
#' * `regex()`: `fixed = FALSE` & `perl = FALSE` (the default)
#' * `fixed()`: use `fixed = TRUE`
#' * `perl()`: use `perl = TRUE`
#'
#' @param x Pattern whose behaviour will be modified
#' @param ignore_case If `TRUE`, will ignore case during matching.
#' @export
fixed <- function(x) {
  structure(
    x,
    class = c("stringb_fixed", "stringr_pattern", "character")
  )
}

#' @export
#' @rdname fixed
regex <- function(x, ignore_case = FALSE) {
  structure(
    x,
    ignore_case = ignore_case,
    class = c("stringb_regex", "stringr_pattern", "character")
  )
}

#' @export
#' @rdname fixed
perl <- function(x, ignore_case = FALSE) {
  structure(
    x,
    ignore_case = ignore_case,
    class = c("stringb_perl", "stringr_pattern", "character")
  )
}

is_fixed <- function(x) inherits(x, "stringb_fixed")
is_perl <- function(x) inherits(x, "stringb_perl")
ignore_case <- function(x) isTRUE(attr(x, "ignore_case"))


check_pattern <- function(x) {
  if (!is.character(x) || length(x) != 1) {
    stop("`pattern` must be a single string", call. = FALSE)
  }

  if (is.na(x)) {
    stop("`pattern` can't be NA", call. = FALSE)
  }
}
