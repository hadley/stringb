#' Trim whitespace of a string
#'
#' @inheritParams str_detect
#' @param side Side on which to remove whitespace (left, right or both).
#' @export
str_trim <- function(string, side = c("both", "left", "right")) {
  side <- match.arg(side)

  switch(side,
    both  = sub("\\s+$", "", sub("^\\s+", "", string)),
    left  = sub("^\\s+", "", string),
    right = sub("\\s+$", "", string),
  )
}
