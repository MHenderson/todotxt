
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
#>   priority completed completion_date creation_date text   context projects
#>   <chr>    <lgl>     <lgl>           <lgl>         <chr>  <list>  <list>  
#> 1 A        FALSE     NA              NA            Call … <chr [… <chr [1…
#> 2 A        FALSE     NA              NA            Sched… <lgl [… <chr [1…
#> 3 B        FALSE     NA              NA            Outli… <chr [… <chr [1…
#> 4 C        FALSE     NA              NA            Add c… <chr [… <chr [1…
#> 5 <NA>     FALSE     NA              NA            Plan … <chr [… <lgl [1…
#> 6 <NA>     FALSE     NA              NA            Pick … <chr [… <lgl [1…
#> 7 <NA>     FALSE     NA              NA            Resea… <chr [… <chr [1…
#> 8 <NA>     TRUE      NA              NA            Downl… <chr [… <lgl [1…
#> # ... with 1 more variable: tags <list>
```
