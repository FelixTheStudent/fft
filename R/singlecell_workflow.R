# Single-cell data processing workflow




#
#' @title Seurat clusters from PCA embedding
#' @description For small data sets, quickly get Seurat clusters.
#' @param pca_embedding PARAM_DESCRIPTION
#' @param resolution PARAM_DESCRIPTION
#' @return Factor with cluster identities of each cell.
#' @details Type \code{clusters_seurat} and hit enter to see the code, that's what
#' the function is intended for - as a cheat sheet to copy paste.
#' If you want, you can use it to actually compute clusters, but note that
#' the dense distance matrix is computed using \code{dist}, so is very slow
#' and memory-intensive.
#' Requires Seurat3 to be installed.
#' @seealso
#'  \code{\link[Seurat]{FindNeighbors}}
#' @rdname clusters_seurat
#' @export
#' @importFrom Seurat FindNeighbors

clusters_seurat <- function(pca_embedding, resolution) {
  snn <- Seurat::FindNeighbors(dist(pca_embedding), verbose=FALSE)$snn
  clusters <- factor(Seurat:::RunModularityClustering(snn, resolution = resolution,
                                                      print.output = FALSE) )
  return(clusters)

}


