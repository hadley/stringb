
# stringb

<!-- badges: start -->
<!-- badges: end -->

stringr provides a zero-dependency (mostly) drop in replacement for stringr implemented on top of base R regular expressions. This is useful if you are finding stringr's stringi dependency to be onerous for your users (since it requires compilation and a large unicode database).

stringrb should match stringr behaviour as much as possible. The main exceptions are listed below:

* stringb uses either POSIX 1003.2 extended or Perl-compatible regular 
  expressions. By and large, these are represent subsets of the ICU backed
  engine that stringi provides, but there maybe be subtle differences in 
  edge cases.
  
* Most stringr functions are recycled over all arguments. stringb provides 
  much more limited recycling: `pattern` is not recycled; and `str_sub()`
  only recycles `start` and `stop`, not `string`.

## Installation

You can install the development version of stringb with:

``` r
remotes::install_github("hadley/stringb")
```
