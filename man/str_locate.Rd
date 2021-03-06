% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locate.R
\name{str_locate}
\alias{str_locate}
\alias{str_locate_all}
\title{Locate patterns within a string}
\usage{
str_locate(string, pattern)

str_locate_all(string, pattern)
}
\arguments{
\item{string}{Character vector of strings.}

\item{pattern}{A pattern to match. Can be:
\itemize{
\item A single string or \code{\link[=regex]{regex()}}, to use POSIX 1003.2 extended regular
expression.
\item \code{fixed()} to use a fixed/literal matchi.
\item \code{perl()} to use a Perl-compatible regular expression.
}

Unlike stringr, \code{pattern} must be length 1; it will not be recycled to
the same length as \code{string}.}
}
\value{
For \code{str_locate()}, an integer matrix with one row for each element of
\code{string}, and two columns ("start" and "end"). If the match is of length 0,
end will be one character less than start.

For \code{str_locate_all()}, a list with one element for each element of \code{string}.
Each list element is integer matrix with one row for each matche, and two
columns ("start" and "end").
}
\description{
Locate patterns within a string
}
