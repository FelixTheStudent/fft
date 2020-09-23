# themes for ggplots etcetera




#' Plain UMAP theme
#'
#' A ggplot theme that can be added with \code{p+plain_umap}.
#' Simple background, no axis ticks etc..
#'
#'
"plain_umap"


#' Hide Legend in ggplot2 graphs
#'
#' Add to plot with \code{p+legend_off}, this will set legend.position="none".
#'
#'
"legend_off"


#' @title Set legend size for geom_point
#' @description \code{geom_point} with small size makes the legend unintelligible,
#' add to plot with \code{p+legend_point_size(3)}.
#' @param size Point size in legend, Default: 2
#' @return OUTPUT_DESCRIPTION
#' @details Same as ggplot2::guides.
#' @examples
#' ggplot(mtcars, aes(mpg, cyl, col=cyl))+geom_point() + legend_point_size(5)
#' @seealso
#'  \code{\link[ggplot2]{c("guide_bins", "guide_colourbar", "guide_coloursteps", "guide_legend", "guides", "guides")}},\code{\link[ggplot2]{guide_legend}}
#' @rdname legend_point_size
#' @export
#' @importFrom ggplot2 guides guide_legend
legend_point_size <- function(size=2) {
  ggplot2::guides(colour = ggplot2::guide_legend(override.aes = list(size=size)))
}
