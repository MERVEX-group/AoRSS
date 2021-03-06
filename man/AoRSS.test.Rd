% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AoRSS.R
\name{AoRSS.test}
\alias{AoRSS.test}
\title{Analysis of residual sum of squares (AoRSS)}
\usage{
AoRSS.test(RSSi, RSSp, K, N)
}
\arguments{
\item{RSSi}{a vector containing for each data set the sum of squared residuals calculated after fitting the corresponding curve.}

\item{RSSp}{the sum of squared residuals for the fit of the curve for the pooled data.}

\item{K}{the number of curves being compared.}

\item{N}{the total or pooled sample size.}
}
\value{
The value of the F-statistic and the corresponding p-value.
}
\description{
Returns the test statistic and p-value corresponding to a method of comparing a number of curves called the analysis of residual sum of squares (AoRSS). The null hypothesis of test is that the K curves can be assumed coincident.
}
\details{
The function returns the test statistic and p-value corresponding to the following test. Previously to compute the statistic:\itemize{
\item For each data set i, fit a curve and calculate the sum of squared residuals, RSSi.
\item Data for all curves are pooled, a new curve is fitted to the combined data, and the total or pooled RSSp is calculated.}
Now, all the necessary terms for computing our F-statistic are available and F is equal to:
\deqn{((RSSp-sum(RSSi))/(3(K-1)))/((sum(RSSi))/(N-3K)),}
where F is the F statistic with 3.(K – 1) and (N – 3.K) degrees of freedom, K is the number of curves being compared, and N is the total or pooled sample size.
Remember that the null hypothesis is that the K curves can be assumed coincident.
}
\examples{
# An example based on the age length data relating
# to Pacific hake with separate data for both males
# and females (Example Table 9.3 of Haddon 2011,
# Quantitative Methods of Fisheries). The question
# is whether the male and female Pacific hake exhibit
# different growth throughout their lives. This is, we
# testing if the growth curves for males and females
# are coincident or not?
RSSi=c(28.8003778903944, 19.4233877094241)
RSSp=79.7645155773056
K=2
N=24
AoRSS.test(RSSi,RSSp,K,N)
}
\references{
Haddon, Malcolm. (2011). Modelling and Quantitative Methods in Fisheries 2nd Edition.
}
\author{
\itemize{
\item{Marta Cousido-Rocha}
\item{Santiago Cerviño López}
}
}
