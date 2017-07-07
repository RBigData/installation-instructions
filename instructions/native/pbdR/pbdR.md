# pbdR

For more explanations of any individual package, see [the pbdR packages site](https://rbigdata.github.io/packages.html).


## Compute
For the MPI compute tools, you will want to install:

```r
install.packages('pbdMPI')
install.packages('pbdDMAT')
install.packages('pmclust')
install.packages('kazaam')
```

If you want the latest versions of all packages and their dependencies (including a few not yet on CRAN), run:

```r
install_github('RBigData/pbdMPI')
install_github('RBigData/pbdSLAP')
install_github('RBigData/pbdBASE')
install_github('RBigData/pbdDMAT')
install_github('RBigData/pbdML')
install_github('RBigData/pmclust')
install_github('RBigData/kazaam')
```



## I/O
For a useful, general purpose parallel I/O tool, install:

```r
install_github('RBigData/pbdIO')
```

If you have netcdf4 installed, you may want:

```r
install.packages('pbdNCDF4')
```

If you use the ADIOS system, then you may want:

```r
install_github('RBigData/pbdADIOS')
```



## Client/Server
For a basic client/server setup, install:
```r
install.packages("remoter")
```

For the latest, including an MPI client/server, install:

```r
install_github("RBigData/remoter")
install_github("RBigData/pbdCS")
```



## Profiling
For MPI profiling, you will want:

```r
install.packages("pbdPROF")
```

This will require a re-build of pbdMPI with some additional compiler flags.  See the [pbdMPI vignette](https://cran.r-project.org/web/packages/pbdMPI/vignettes/pbdMPI-guide.pdf) for details.

For hardware counter profiling (NOTE: Linux only), install:

```r
install_github("RBigData/pbdPAPI")
```

Finally, for a suite of profiling and vis tools that enhance pbdPROF and pbdPAPI, install:

```r
install_github("RBigData/hpcvis")
```
