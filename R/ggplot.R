
#' @export
theme_clean <- function(base_size = 11, base_family = "Arial") {
  th <- theme_minimal(base_family = base_family, base_size = base_size) +
    theme(
      panel.background = element_rect(fill = "white"),
      plot.background = element_rect(fill = "white"),
      axis.line = element_line(color = "black", size = 0.2)
    )
  th
}


#' @export
theme_inky_blue <- function(base_size = 11, base_family = "Arial") {
  th <- theme_minimal(base_family = base_family, base_size = base_size) +
    theme(
      plot.background = element_rect(fill = ps_colors2$blue),
      panel.background = element_rect(fill = ps_colors2$blue),
      axis.text = element_text(color = "white"),
      panel.grid = element_blank(),
      plot.title = element_text(color = ps_colors2$pink,
                                face = "bold"),
      axis.line = element_line(color = "white"),
      axis.title = element_text(color = ps_colors2$pink)
    )
  th
}
