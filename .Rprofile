# Matt Johnson's .Rprofile
source('~/R/Rhelpers/helperFuncts.r')

# hard code the Rstudio repo for CRAN
r <- getOption("repos")
r["CRAN"] <- "http://cran.rstudio.com/"
options(repos = r)

if(system('echo $USER') == 'mcooganj')
{
    setwd("/Users/mcooganj/R/wd/")
    .libPaths("/Users/mcooganj/R/wd/raPackages/")
}

if(system('echo $USER') == 'mcj')
{
    setwd("/Users/mcj/rwd/")
    .libPaths("/Users/mcj/rwd/rpax/")
}

# default libraries
require(fastmatch)
# require(RApack)

if (interactive()){
  require(setwidth)
  require(vimcom)
}


