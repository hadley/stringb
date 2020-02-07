#' Extract matching groups
#'
#' @inheritParams str_detect
#' @return
#' A character matrix with one row for each element of `string`. The first
#' column gives the complete match; the remaining columns give the component
#' of each match group (formed by `()`).
str_match <- function(string, pattern) {
  check_pattern(pattern)

  loc <- regexec(pattern, string,
    fixed = is_fixed(pattern),
    perl = is_perl(pattern),
    ignore.case = ignore_case(pattern)
  )
  loc <- lapply(loc, location)

  out <- lapply(seq_along(string), function(i) {
    loc <- loc[[i]]
    str_sub(rep(string[[i]], nrow(loc)), loc)
  })
  do.call("rbind", out)
}
