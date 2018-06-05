#' todotxt
#'
#' @import reticulate
#'
#' @docType package
#' @name todotxt
NULL

# python 'foo' module I want to use in my package
todotxtio <- NULL

.onLoad <- function(libname, pkgname) {
  # delay load foo module (will only be loaded when accessed via $)
  todotxtio <<- reticulate::import("todotxtio", delay_load = TRUE)
}
