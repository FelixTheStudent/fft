## code to prepare `plot_themes` dataset goes here


plain_umap <- ggplot2::theme(
  # bare axis:
  axis.title = ggplot2::element_blank(),
  axis.text = ggplot2::element_blank(),
  axis.ticks = ggplot2::element_blank(),
  # grey background without grid:
  panel.background = ggplot2::element_rect(fill="grey95"),
  panel.grid = ggplot2::element_blank()
)
usethis::use_data(plain_umap, overwrite = TRUE)



legend_off <- ggplot2::theme(legend.position = "none")
usethis::use_data(legend_off, overwrite = TRUE)
















