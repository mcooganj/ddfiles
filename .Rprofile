# Matt Johnson's .Rprofile

# hard code the UK repo for CRAN
r <- getOption("repos")           
r["CRAN"] <- "http://cran.ma.imperial.ac.uk"
options(repos = r)
rm(r)

setwd("/Users/mcooganj/R/wd/")
.libPaths("/Users/mcooganj/R/wd/raRpackages/")
# .libPaths("/Users/mcooganj/R/wd/lopack/")

# default libraries
require(xts)
require(fastmatch)
require(data.table)
require(lattice)
require(RApack)

if (interactive()){
  library(colorout)
  library(setwidth)
  library(vimcom)
}


