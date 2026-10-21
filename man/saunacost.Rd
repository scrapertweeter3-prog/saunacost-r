\name{sauna_cost}
\alias{sauna_cost}
\title{Dollars per session for a home sauna}
\usage{
sauna_cost(gear, week, kwh, rate, alt, months = 36)
}
\arguments{
\item{gear}{Gear price in dollars.}
\item{week}{Sessions per week.}
\item{kwh}{Kilowatt-hours per session.}
\item{rate}{Electric rate in dollars per kWh.}
\item{alt}{Alternative per-visit cost.}
\item{months}{Amortization window in months.}
}
\value{A list: sessions per year and in window, utility and amortized cost
per session, break-even visit count.}
\description{Amortize a home sauna over real usage, add the electricity
line, and find where it beats paying per visit.}
\examples{
sauna_cost(2500, 4, 2.0, 0.17, 22, months = 36)
}
