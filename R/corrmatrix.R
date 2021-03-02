#' A NBA Function
#'
#' This function returns the correlation matrix for all numeric variables in the NBA data for a given year.
#' @param year The specific year/season
#' @keywords the correlation matrix
#' @export
#' @examples
#' corrmatrix()

corrmatrix <- function(year){
  num <- keep(filter(NBA, Year == year), is.numeric)
  result <- cor(num)
  result
}
