# Installation Problems

During the course of installation, you may run into unrecoverable issues.  The pbdR team does not support MPI libraries or R core, so if you have problems during that portion of the installation phase, we probably can not directly help you.  However, there are still many great resources at your disposal, maintained by those individual projects.

## R and MPI

If you have problems installing or customizing R, see the *[R Installation and Administration Manual]*(http://cran.r-project.org/doc/manuals/R-admin.html) for help.

If you are having trouble installing an MPI library, such as [OpenMPI](http://www.open-mpi.org/community/help/) or [MPICH](http://www.mpich.org/documentation/guides/), you should see that library's official documentation.

For the remainder, we will be addressing installation issues with pbdR packages.



## pbdR

This is a quick list of potential problems you could encounter when installing pbdR packages.  For additional troubleshooting or installation options, each package has a vignette which may offer additional useful information.

*  **Compiling pbdMPI from source**: you may be required to pass a configure argument at compile time.  So for example, if you have OpenMPI installed and were installing from the command line, then you would issue the command:
```bash
R CMD INSTALL pbdMPI_0.1-6.tar.gz  --configure-args='--with-mpi-type=OPENMPI'
```
  or if installing from R:
```r
install.packages("pbdMPI", configure.args='--with-mpi-type=OPENMPI')
```
  See the **pbdMPI** vignette for more details.

* **Installing on a cluster**: if you are required to install on a login node which can not execute `mpirun`, then pass the install option `--no-test-load`.  So for example, if installing from the command line, then you would issue the command:
```bash
R CMD INSTALL pbdMPI_0.1-6.tar.gz --no-test-load
```
  or if installing from R:
```r
install.packages("pbdMPI", INSTALL_opts='--no-test-load')
```
