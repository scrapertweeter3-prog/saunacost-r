# saunacost (R)

Dollars-per-session math for a home sauna or cold plunge: amortize the gear
over the sessions you actually take, add the electricity line, find the
visit count where it beats paying per visit. R port of the
[sauna-vs-gym-cost](https://github.com/scrapertweeter3-prog/sauna-vs-gym-cost)
calculator. The protocol-cost method comes from
[HackedSelf](https://hackedself.com).

## Example

```r
sauna_cost(2500, 4, 2.0, 0.17, 22, months = 36)
# $sessions_in_window 626  $utility_per_session 0.34
# $amortized_per_session 4.34  $breakeven_visits 115
```

## Install

```r
install.packages("saunacost", repos = c(
  "https://scrapertweeter3-prog.r-universe.dev",
  "https://cloud.r-project.org"))
```

Home Sauna Cost Per Session: benchmark math from the Poket Dev research desk.
