# R and RStudio

## R
In order to complete the exercises, you will need to have R installed.  You can find R binaries and/or source at http://cran.r-project.org. Installation for Windows and Mac users should be very much like what you are used to.  Linux and *BSD users probably have access to R in their OS's software repository; you can find additional information at the above download link.

If for some reason you need/wish to build R from source, consult the R Installation and Administration manual https://cran.r-project.org/doc/manuals/R-admin.html.



* deb (Debian, Ubuntu): `apt-get install r-base-dev`
* rpm (Fedora, Centos): `yum install openmpi-devel`
* FreeBSD: `pkg install openmpi`




## Compilers
Finally, if you wish to be able to build packages from source, then you need to install some additional things.  This is not strictly necessary, although there is a very active community of R developers on GitHub, who do not submit their packages to CRAN (which distributes binaries for Windows+Mac).  This is optional for this lab, though encouraged if you use R regularly.

* Windows: Install Rtools http://cran.r-project.org/bin/windows/Rtools/
* Mac: 
    - First install XCode from the Mac App Store
    - Then, open XCode and choose "Preferences", "Downloads", then "Install Command Line Tools".
    - [gfortran](https://cran.r-project.org/bin/macosx/tools/)
* Linux/FreeBSD: You need C and Fortran compilers, which you may well already have installed.  Consult your distribution's package manager.



## RStudio (Optional)
R is supported in just about every text editor and multi-language IDE these days.  However, much of the R community uses the RStudio Desktop IDE http://www.rstudio.com/products/rstudio/download/.  It has binaries for Windows, Mac, and Linux.  You can even install a server version running on a remote instance, and it looks/behaves much the same as the desktop version.

RStudio is probably the most popular editor used in the R community, so even if you prefer another editor/ide, it is still useful to get a sense for the tools that R users find most appealing.  Installing RStudio is optional.  But if you install it, you still need to install R separately as explained above.
