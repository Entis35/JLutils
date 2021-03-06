% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggchisq_res.R
\name{ggchisq_res}
\alias{ggchisq_res}
\title{Chi-squared residuals matrix plot}
\usage{
ggchisq_res(formula, data, weight = NULL, addNA = FALSE, label = NULL,
  breaks = c(-4, -2, 2, 4), palette = "RdBu", return_data = FALSE)
}
\arguments{
\item{formula}{formula of variables to be cross-tabulated, rows on left hand side and columns on the right hand side}

\item{data}{data frame containing the data}

\item{weight}{optionnal string indicating a column containing weights}

\item{addNA}{whether to include NA values in the tables}

\item{label}{optionnal cell labels (see examples)}

\item{breaks}{how to recode residuals into categories?}

\item{palette}{Brewer colour palette (see \url{http://colorbrewer2.org})}

\item{return_data}{return computed data.frame instead of ggplot?}
}
\value{
a ggplot graphic or a data frame if \code{return_data == TRUE}.
}
\description{
Chi-squared residuals matrix plot
}
\examples{
ggchisq_res(
  Sex + Age + Class ~ Survived,
  data = as.data.frame(Titanic),
  weight = "Freq")
ggchisq_res(
  Sex + Age + Class ~ Survived,
  data = as.data.frame(Titanic),
  weight = "Freq",
  return_data = TRUE)
ggchisq_res(
  Sex + Age + Class ~ Survived,
  data = as.data.frame(Titanic),
  weight = "Freq",
  label = "scales::percent(row.prop)")
ggchisq_res(
  Sex + Age + Class ~ Survived,
  data = as.data.frame(Titanic),
  weight = "Freq",
  breaks = c(-4, -2, 0, 2, 4))
}
