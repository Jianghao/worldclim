setwd("K:/worldclim.org/gh-pages/")
library("rmarkdown")

rmd <- dir(getwd(), pattern = "*.Rmd$")
html <- dir(getwd(), pattern = "*.html$")
if(length(html) > 0) unlink(html)

lapply(rmd, function(i) rmarkdown::render(i, "html_document"))