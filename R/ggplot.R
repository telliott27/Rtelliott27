
#' @export
theme_clean <- function(base_size = 11, base_family = "sans") {
  th <- theme_minimal(base_family = base_family, base_size = base_size) +
    theme(
      panel.grid = element_blank(),
      axis.line = element_line(color = "black", size = 0.2)
    )
  th
}
