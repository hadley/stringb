#' Extract substrings
#'
#' @inheritParams str_detect
#' @param start,end Integer vectors specifying `start` and `end` positions
#'   (inclusive). Negative values count backwards from the right hand side;
#'   -1 refers to the last character.
#'
#'   Instead of separate `start` and `end` parameters you can alternatively
#'   provide a two-column matrix (i.e. from `str_locate()`); the first column
#'   will be used for the starting position and the second for the ending
#'   position.
#' @export
str_sub <- function(string, start = 1L, end = -1L) {
  if (is.matrix(start)) {
    end <- start[, 2]
    start <- start[, 1]
  }

  start <- recycle(start, string)
  end <- recycle(end, string)

  n <- nchar(string)
  start <- ifelse(start < 0, start + n + 1, start)
  end <- ifelse(end < 0, end + n + 1, end)

  substr(string, start, end)
}

recycle <- function(x, to, arg = deparse(substitute(x))) {
  if (length(x) == length(to)) {
    return(x)
  }

  if (length(x) != 1) {
    stop("Can't recycle `", arg, "` to length ", length(to), call. = FALSE)
  }

  rep(x, length(to))
}
