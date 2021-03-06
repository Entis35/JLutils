% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formating.R
\name{number_format}
\alias{number_format}
\alias{number}
\alias{en_format}
\alias{en}
\alias{fr_format}
\alias{fr}
\alias{percent_format}
\alias{percent}
\alias{pourcent_format}
\alias{pourcent}
\alias{comp_percent_format}
\alias{comp_percent}
\alias{comp_pourcent_format}
\alias{comp_pourcent}
\alias{en0}
\alias{en1}
\alias{en2}
\alias{en3}
\alias{en4}
\alias{en5}
\alias{fr0}
\alias{fr1}
\alias{fr2}
\alias{fr3}
\alias{fr4}
\alias{fr5}
\alias{percent0}
\alias{percent1}
\alias{percent2}
\alias{percent3}
\alias{percent4}
\alias{percent5}
\alias{pourcent0}
\alias{pourcent1}
\alias{pourcent2}
\alias{pourcent3}
\alias{pourcent4}
\alias{pourcent5}
\alias{comp_percent0}
\alias{comp_percent1}
\alias{comp_percent2}
\alias{comp_percent3}
\alias{comp_percent4}
\alias{comp_percent5}
\alias{comp_pourcent0}
\alias{comp_pourcent1}
\alias{comp_pourcent2}
\alias{comp_pourcent3}
\alias{comp_pourcent4}
\alias{comp_pourcent5}
\title{Number formatters}
\usage{
number_format(accuracy = 1, multiplier = 1, prefix = "", suffix = "",
  big.mark = " ", decimal.mark = ".", ...)

number(x, accuracy = 1, multiplier = 1, prefix = "", suffix = "",
  big.mark = " ", decimal.mark = ".", ...)

en_format(accuracy = 1, multiplier = 1, prefix = "", suffix = "",
  big.mark = ",", decimal.mark = ".", ...)

en(x, accuracy = 1, multiplier = 1, prefix = "", suffix = "",
  big.mark = ",", decimal.mark = ".", ...)

fr_format(accuracy = 1, multiplier = 1, prefix = "", suffix = "",
  big.mark = " ", decimal.mark = ",", ...)

fr(x, accuracy = 1, multiplier = 1, prefix = "", suffix = "",
  big.mark = " ", decimal.mark = ",", ...)

percent_format(accuracy = 1, multiplier = 100, prefix = "",
  suffix = "\%", big.mark = " ", decimal.mark = ".", ...)

percent(x, accuracy = 1, multiplier = 100, prefix = "", suffix = "\%",
  big.mark = " ", decimal.mark = ".", ...)

pourcent_format(accuracy = 1, multiplier = 100, prefix = "",
  suffix = " \%", big.mark = " ", decimal.mark = ",", ...)

pourcent(x, accuracy = 1, multiplier = 100, prefix = "", suffix = " \%",
  big.mark = " ", decimal.mark = ",", ...)

comp_percent_format(accuracy = 1, multiplier = 100, prefix = "",
  suffix = "\%", big.mark = " ", decimal.mark = ".", ...)

comp_percent(x, accuracy = 1, multiplier = 100, prefix = "",
  suffix = "\%", big.mark = " ", decimal.mark = ".", ...)

comp_pourcent_format(accuracy = 1, multiplier = 100, prefix = "",
  suffix = " \%", big.mark = " ", decimal.mark = ",", ...)

comp_pourcent(x, accuracy = 1, multiplier = 100, prefix = "",
  suffix = " \%", big.mark = " ", decimal.mark = ",", ...)

en0(x)

en1(x)

en2(x)

en3(x)

en4(x)

en5(x)

fr0(x)

fr1(x)

fr2(x)

fr3(x)

fr4(x)

fr5(x)

percent0(x)

percent1(x)

percent2(x)

percent3(x)

percent4(x)

percent5(x)

pourcent0(x)

pourcent1(x)

pourcent2(x)

pourcent3(x)

pourcent4(x)

pourcent5(x)

comp_percent0(x)

comp_percent1(x)

comp_percent2(x)

comp_percent3(x)

comp_percent4(x)

comp_percent5(x)

comp_pourcent0(x)

comp_pourcent1(x)

comp_pourcent2(x)

comp_pourcent3(x)

comp_pourcent4(x)

comp_pourcent5(x)
}
\arguments{
\item{accuracy}{number to round to, \code{NULL} for automatic guess}

\item{multiplier}{number to multiply by (e.g. for computing percentages or thousands)}

\item{prefix, suffix}{Symbols to display before and after value}

\item{big.mark}{character used between every 3 digits to separate thousands}

\item{decimal.mark}{the character to be used to indicate the numeric decimal point}

\item{...}{other arguments passed on to \code{\link{format}}.}

\item{x}{a numeric vector to format}
}
\value{
a formatted character vector or, for \code{*_format} functions, a function with single parameter \code{x}, a numeric vector, that
  returns a character vector
}
\description{
\code{number} is a generic formatter for numeric values.
\code{en} is a shortcut for English format (comma as separator for thousands, point for decimal), \code{fr} for French format (space for thousands, comma for decimal).
\code{percent} a shortcut for English percentages (value are multiplied by 100 and a % symbol is added) and \code{pourcent} a shortcut for French percentages.
\code{comp_percent} returns the complement of 1, i.e. \code{percent(1 - x)}. \code{comp_pourcent} is the French version.
\code{*_format} functions will return another functions, useful to be used for example with \code{ggplot2}.
\code{en0} to \code{en5} are shortcuts for \code{en} with 0 to 5 digits after decimal point. Similarly, \code{fr0} to \code{fr5} are shortcuts of \code{fr},
\code{percent0} to \code{percent5} of \code{percent}, etc.
}
\examples{
v <- c(12.3, 4, 12345.789, 0.0002)
number(v)
en(v)
fr(v)
en2(v)
en(v, accuracy = .001)
en(v, accuracy = .5)

p <- runif(10)
p
percent(p)
percent2(p)
pourcent2(p)
comp_percent(p)

# Per mille
per_mille <- number_format(multiplier = 1000, suffix = "\\u2030", accuracy = .1)
per_mille(v)
}
