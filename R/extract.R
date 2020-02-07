#' Extract patterns from a string
#'
#' @inheritParams str_detect
#' @export
str_extract <- function(string, pattern) {
  check_pattern(pattern)

  str_sub(string, str_locate(string, pattern))
}

#' @rdname str_extract
#' @export
str_extract_all <- function(string, pattern) {
  check_pattern(pattern)

  loc <- str_locate_all(string, pattern)
  lapply(seq_along(string), function(i) {
    loc <- loc[[i]]
    str_sub(rep(string[[i]], nrow(loc)), loc)
  })
}
