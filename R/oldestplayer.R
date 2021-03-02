#' A NBA Function
#'
#' This function returns the oldest player in the NBA data for a given year. If multiple players have the same age, we return the first player by ascending name.
#' @param year The specific year/season
#' @keywords the oldest player
#' @export
#' @examples
#' oldestplayer()

oldestplayer <- function(year){
  result <- NBA %>%
    filter(Year == year) %>%
    # if same age, rank name in an ascending order
    arrange(desc(Age),Player)
  print(result[1,'Player'])
}
