% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reinert.R
\name{reinert}
\alias{reinert}
\title{Segment clustering based on the Reinert method - Simple clustering}
\usage{
reinert(
  x,
  k = 10,
  term = "token",
  segment_size = 40,
  min_segment_size = 3,
  min_split_members = 5,
  cc_test = 0.3,
  tsj = 3
)
}
\arguments{
\item{x}{tall data frame of documents}

\item{k}{maximum number of clusters to compute}

\item{term}{indicates the type of form "lemma" or "token". Default value is term = "lemma".}

\item{segment_size}{number of forms by document. Default value is segment_size = 40}

\item{min_segment_size}{minimum number of forms by document. Default value is min_segment_size = 5}

\item{min_split_members}{minimum number of segment in a cluster}

\item{cc_test}{contingency coefficient value for feature selection}

\item{tsj}{minimum frequency value for feature selection}
}
\value{
The result is a list of both class \code{hclust} and \code{reinert_tall}.
}
\description{
Segment clustering based on the Reinert method - Simple clustering
}
\details{
See the references for original articles on the method.
Special thanks to the authors of the rainette package (https://github.com/juba/rainette)
for inspiring the coding approach used in this function.
}
\examples{
\donttest{
data(mobydick)
res <- reinert(
  x = mobydick,
  k = 10,
  term = "token",
  segment_size = 40,
  min_segment_size = 5,
  min_split_members = 10,
  cc_test = 0.3,
  tsj = 3
)
}

}
\references{
\itemize{
\item Reinert M, Une méthode de classification descendante hiérarchique: application à l'analyse lexicale par contexte, Cahiers de l'analyse des données, Volume 8, Numéro 2, 1983. \url{https://www.numdam.org/item/?id=CAD_1983__8_2_187_0}
\item Reinert M., Alceste une méthodologie d'analyse des données textuelles et une application: Aurelia De Gerard De Nerval, Bulletin de Méthodologie Sociologique, Volume 26, Numéro 1, 1990. \doi{10.1177/075910639002600103}
\item Barnier J., Privé F., rainette: The Reinert Method for Textual Data Clustering, 2023, \doi{10.32614/CRAN.package.rainette}
}
}
