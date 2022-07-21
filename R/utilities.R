
#' @export
pretty_kable <- purrr::partial(knitr::kable, format.args = list(big.mark = ","))
