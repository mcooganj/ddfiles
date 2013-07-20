# Matt Johnson's .Rprofile

# source helper functions into helper environment
helpEnv <- new.env()
source('~/R/Rhelpers/helperFuncts.r', local = helpEnv)
attach(helpEnv)

# hard code the Rstudio repo for CRAN
r <- getOption("repos")
r["CRAN"] <- "http://cran.rstudio.com/"
options(repos = r)

# {{{setup stuff -- by location

setup_mcooganj <- function()
{
    setwd("/Users/mcooganj/R/wd/")
    .libPaths("/Users/mcooganj/R/wd/raPackages")
}

setup_mcj <- function()
{
    setwd("/Users/mcj/rwd/")
    .libPaths("/Users/mcj/rwd/rpax")
}

setup <- function()
{
    switch(system('echo $USER', inter=TRUE),
           'mcooganj' = setup_mcooganj(),
           'mcj' = setup_mcj())
}
# }}}

setup()

# default libraries
require(fastmatch)
require(xts)
#require(RApack)

if (interactive()){
    require(setwidth)
    require(vimcom)
}

