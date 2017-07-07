# R Packages

## CRAN Packages
Most packages you will want to install are available on the Comprehensive R Archive Network (CRAN).  
To install a package named `pkg` (including automatically handling dependency resolution), start up an R session and enter 
```r
install.packages("pkg")
```

Two packages which are very useful for the performance minded are:

* rbenchmark
* microbenchmark

You could install these by running:

```r
install.packages(c("rbenchmark", "microbenchmark"))
```


## GitHub Packages
There is a lot of exciting work on GitHub in the R world.  Many people who publish their packages on CRAN maintain development versions on GitHub.  So if you want the latest version, you need to install from GitHub.  There are some packages that help with this effort, but to use them, you will need to first install some additional software.  Follow the instructions in the Compilers subsection from the previous section if you have not already.

Once you have the necessary tools installed, you can simplify the process of installing a package from GitHub with an additional package.  First run:

```r
install.packages("remotes")
```

in an R session.  Then to install a package from GitHub, you simply run:

```r
remotes::install_github("pkg")
```
