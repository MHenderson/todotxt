
<!-- README.md is generated from README.Rmd. Please edit that file -->
todotxt
=======

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
#>   priority text   completion_date completed creation_date context projects
#>   <chr>    <chr>  <lgl>           <lgl>     <lgl>         <list>  <list>  
#> 1 A        Call … NA              FALSE     NA            <chr [… <chr [1…
#> 2 A        Sched… NA              FALSE     NA            <lgl [… <chr [1…
#> 3 B        Outli… NA              FALSE     NA            <chr [… <chr [1…
#> 4 C        Add c… NA              FALSE     NA            <chr [… <chr [1…
#> 5 <NA>     Plan … NA              FALSE     NA            <chr [… <lgl [1…
#> 6 <NA>     Pick … NA              FALSE     NA            <chr [… <lgl [1…
#> 7 <NA>     Resea… NA              FALSE     NA            <chr [… <chr [1…
#> 8 <NA>     Downl… NA              TRUE      NA            <chr [… <lgl [1…
#> # ... with 1 more variable: tags <list>
```
