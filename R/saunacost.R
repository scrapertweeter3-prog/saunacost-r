sauna_cost <- function(gear, week, kwh, rate, alt, months = 36) {
  stopifnot(gear > 0, week > 0, kwh > 0, rate > 0, alt > 0, months > 0)
  sessions_year <- week * 52
  window <- floor(months / 12 * sessions_year)
  utility <- kwh * rate
  amortized <- gear / window + utility
  breakeven <- if (alt > utility) gear / (alt - utility) else NA
  list(sessions_per_year = sessions_year,
       sessions_in_window = window,
       utility_per_session = round(utility, 2),
       amortized_per_session = round(amortized, 2),
       breakeven_visits = if (!is.na(breakeven)) round(breakeven) else NA,
       never_breakeaks = is.na(breakeven))
}
