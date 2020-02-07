#' Locate patterns within a string
#'
#' @inheritParams str_detect
#' @export
#' @return
#' For `str_locate()`, an integer matrix with one row for each element of
#' `string`, and two columns ("start" and "end"). If the match is of length 0,
#' end will be one character less than start.
#'
#' For `str_locate_all()`, a list with one element for each element of `string`.
#' Each list element is integer matrix with one row for each matche, and two
#' columns ("start" and "end").
str_locate <- function(string, pattern) {
  check_pattern(pattern)

  out <- regexpr(pattern, string,
    fixed = is_fixed(pattern),
    perl = is_perl(pattern),
    ignore.case = ignore_case(pattern)
  )

  location(out)
}

#' @rdname str_locate
#' @export
str_locate_all <- function(string, pattern) {
  out <- gregexpr(pattern, string,
    fixed = is_fixed(pattern),
    perl = is_perl(pattern),
    ignore.case = ignore_case(pattern)
  )

  lapply(out, location, all = TRUE)
}

location <- function(x, all = FALSE) {
  start <- as.vector(x)
  if (all && identical(start, -1L)) {
    return(cbind(start = integer(), end = integer()))
  }

  end <- as.vector(x) + attr(x, "match.length") - 1

  no_match <- start == -1L
  start[no_match] <- NA
  end[no_match] <- NA

  cbind(start = start, end = end)
}
