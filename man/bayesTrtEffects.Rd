% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayesTrtEffects.R
\name{bayesTrtEffects}
\alias{bayesTrtEffects}
\title{Estimation of Bayesian Treatment Effects}
\usage{
bayesTrtEffects(base.mat, panel.mat, type = "SF", covars = NULL,
  model.name = "model1", mcmc.control = list(burnin = 1000, select =
  500, M = 1000), control = list(fix.alpha = FALSE, fix.beta = FALSE,
  fix.sigma = FALSE, fix.f = FALSE, sort.data = FALSE))
}
\arguments{
\item{base.mat}{a data frame or matrix file capturing the baseline (at paneltime 0)}

\item{panel.mat}{a data frame file. Needs to be already correctly structured.}

\item{type}{contains one of currently one possible Strings to define the model under which
coefficients and treatment effects are computed ("SF" - Shared Factor Model)}

\item{covars}{contains a character vector, naming the covariates of the dataset.}

\item{model.name}{String which names the model, defaults to "model1"}

\item{sort.data}{boolean which indicates whether the baseline data and panel data
should be organised by treatment and panel time. If the dataset is not yet sorted
this option may sort data in correct format.

The function takes 2 main parameters, base.mat, panel.mat containing the data set on
which to perform estimation. The dataset has to have certain properties.
See ?readPanelUb for more information on how to prepare the dataset
accordingly. For according datasets, the function first sets a lot of parameters
influencing estimation and MCMC sampling process. For the time being this
package includes the functionality of the Shared Factor Model.
One may also be interested in \code{\link{select_trt_sharedfac}} to see how the
function operates.}
}
\value{
For an adequate input file, will output a list object containing all
coefficients of the model.
}
\description{
\code{bayesTrtEffects} performs an estimation of treatment effects on panel
structured data. The dataset may be unbalanced, but needs to fullfill
certain conditions to be properly useable.  The function offers
some model choices, which provide the framework in which the treatment effect
is to be estimated.
}
