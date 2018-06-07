
todotxt
=======

[![Travis build status](https://travis-ci.org/MHenderson/todotxt.svg?branch=master)](https://travis-ci.org/MHenderson/todotxt) [![Coverage status](https://codecov.io/gh/MHenderson/todotxt/branch/master/graph/badge.svg)](https://codecov.io/github/MHenderson/todotxt?branch=master)

[Todo.txt](http://todotxt.org/) is a [standard](https://github.com/todotxt/todo.txt) for text-based todo lists. The goal of this package is to parse todo.txt files like [this one](http://todotxt.org/todo.txt) into tibbles.

Most of the work of parsing todo.txt files in **todotxt** is done by the Python [todotxtio](https://github.com/EpocDotFr/todotxtio) package.

We also expose other functionality from the todotxtio Python package for updating todo lists to support users in building todo.txt based applications.

Installation
------------

You can install todotxt from github with:

``` r
# install.packages("devtools")
devtools::install_github("MHenderson/todotxt")
```

``` r
library(httr)
library(magrittr)
library(todotxt)

GET("http://todotxt.org/todo.txt") %>%
  content("text") %>%
  todotxt()
#> # A tibble: 8 x 8
#>   completed text   completion_date priority creation_date context projects
#>   <lgl>     <chr>  <lgl>           <chr>    <lgl>         <list>  <list>  
#> 1 FALSE     Call … NA              A        NA            <chr [… <chr [1…
#> 2 FALSE     Sched… NA              A        NA            <lgl [… <chr [1…
#> 3 FALSE     Outli… NA              B        NA            <chr [… <chr [1…
#> 4 FALSE     Add c… NA              C        NA            <chr [… <chr [1…
#> 5 FALSE     Plan … NA              <NA>     NA            <chr [… <lgl [1…
#> 6 FALSE     Pick … NA              <NA>     NA            <chr [… <lgl [1…
#> 7 FALSE     Resea… NA              <NA>     NA            <chr [… <chr [1…
#> 8 TRUE      Downl… NA              <NA>     NA            <chr [… <lgl [1…
#> # ... with 1 more variable: tags <list>
```
