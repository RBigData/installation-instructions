# R and RStudio

At a minimum, you will need to install R.  You may also wish to install the popular IDE RStudio.

## R
You can find R binaries and/or source at http://cran.r-project.org. Installation for Windows and Mac users should be very much like what you are used to.  Linux and BSD users probably have access to R in their OS's software repository; you can find additional information at the above download link.

If for some reason you need/wish to build R from source, consult the R Installation and Administration manual https://cran.r-project.org/doc/manuals/R-admin.html.




## Compilers
Finally, if you wish to be able to build packages from source, then you need to install some additional things.

* Windows: Install Rtools http://cran.r-project.org/bin/windows/Rtools/
* Mac: 
    - First install XCode from the Mac App Store
    - Then, open XCode and choose "Preferences", "Downloads", then "Install Command Line Tools".
    - [gfortran](https://cran.r-project.org/bin/macosx/tools/)
* Linux/FreeBSD: You need C and Fortran compilers, which you may well already have installed.  Consult your distribution's package manager.



## RStudio (Optional)
R is supported in just about every text editor and multi-language IDE these days.  However, much of the R community uses the RStudio Desktop IDE http://www.rstudio.com/products/rstudio/download/.  It has binaries for Windows, Mac, and Linux.  You can even install a server version running on a remote instance, and it looks/behaves much the same as the desktop version.

RStudio is probably the most popular editor used in the R community, so even if you prefer another editor/ide, it is still useful to get a sense for the tools that R users find most appealing.  Installing RStudio is optional.  But if you install it, you still need to install R separately as explained above.
