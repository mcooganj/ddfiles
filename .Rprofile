# Matt Johnson's .Rprofile
.First <- function() {
    options(
            repos = c(CRAN = "http://cran.rstudio.com/"),
            browserNLdisabled = TRUE,
            deparse.max.lines = 2
            )
}

if (interactive()) {
    suppressMessages(require(devtools))
    suppressMessages(require(setwidth))
    suppressMessages(require(vimcom))
    suppressMessages(require(fastmatch))
    suppressMessages(require(data.table))
    suppressMessages(require(xts))
    #require(RApack)
}

# source helper functions into helper environment
helpEnv <- new.env()
source('~/Rproject/Rhelpers/helperFuncts.r', local = helpEnv)
attach(helpEnv)

# hard code the Rstudio repo for CRAN
r <- getOption("repos")
r["CRAN"] <- "http://cran.rstudio.com/"
options(repos = r)

# {{{setup stuff -- by location

setup_mcooganj <- function()
{
    setwd("/Users/mcooganj/Rproject/wd/")
    .libPaths("/Users/mcooganj/Rproject/wd/raPackages")
}

setup_mcj <- function()
{
    setwd("/Users/mcj/rwd/")
    .libPaths("/Users/mcj/rwd/rpax")
}

setup_minic <- function()
{
    setwd("/Users/minic/rwd/")
    .libPaths("/Users/minic/rwd/rpax")
    .First.sys()
    quartz.options(width=4, height=4)
}

setup <- function()
{
    switch(system('echo $USER', inter=TRUE),
           'mcooganj' = setup_mcooganj(),
           'mcj' = setup_mcj(),
           'minic' = setup_minic()
           )
}
# }}}

setup()
# .Last
