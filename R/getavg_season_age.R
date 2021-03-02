#' A NBA Function
#'
#' This function returns the average age of NBA players for a specific year/season
#' @param year The specific year/season
#' @keywords Average age
#' @export
#' @examples
#' getavg_season_age()

getavg_season_age <- function(year){
  NBA %>%
    filter(Year == year) %>%
    summarise(result = mean(Age,na.rm = TRUE))
}
