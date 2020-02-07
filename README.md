
# stringb

<!-- badges: start -->
[![Codecov test coverage](https://codecov.io/gh/hadley/stringb/branch/master/graph/badge.svg)](https://codecov.io/gh/hadley/stringb?branch=master)
[![R build status](https://github.com/hadley/stringb/workflows/R-CMD-check/badge.svg)](https://github.com/hadley/stringb/actions)
<!-- badges: end -->

stringr provides a zero-dependency (mostly) drop in replacement for stringr implemented on top of base R regular expressions. This is useful if you are finding stringr's stringi dependency to be onerous for your users (since it requires compilation and a large unicode database).

stringb should match stringr behaviour as much as possible. The main exceptions are listed below:

* stringb uses either Perl-compatible regexps (the default) or POSIX 1003.2
  extended regexps (with `regexp()`). By and large, these are represent subsets 
  of the ICU backed engine that stringi provides, but there maybe be subtle 
  differences in edge cases.

* stringr always returns UTF-8 encoded strings; stringb follows the same rules
  as base R.

* Most stringr functions are recycled over all arguments. stringb provides 
  much more limited recycling: `pattern` is not recycled; and `str_sub()`
  only recycles `start` and `stop`, not `string`.

## Installation

You can install the development version of stringb with:

``` r
remotes::install_github("hadley/stringb")
```
