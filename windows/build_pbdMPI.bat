@ECHO OFF

rem ### Set environment variables.
SET R_VER=2.15.3
SET PBDMPI_VER=0.1-6

rem ### Set environment variables.
SET R_HOME=C:\PROGRA~1\R\R-%R_VER%
SET RHOME=%R_HOME%
SET RBIN=%R_HOME%\bin\
SET RTOOLS=C:\Rtools\bin\
SET MINGW=C:\Rtools\gcc-4.6.3\bin

IF NOT DEFINED PATH_ORG SET PATH_ORG=%PATH%
SET PATH=%RHOME%;%RBIN%;%RTOOLS%;%MINGW%;%PATH_ORG%

rem ### Set "MPI_ROOT_32" and "MPI_ROOT_64" if they are not in the defaul
rem ### installation path or you have different MPI systems.
rem ### "Makevars.win" uses default if the following two are remarked.
rem SET MPI_ROOT_64=C:\Program Files\MPICH2
rem SET MPI_ROOT_32=C:\Program Files (x86)\MPICH2

rem ### Build Windows binary.
R CMD INSTALL --build --html pbdMPI_%PBDMPI_VER%.tar.gz
R CMD INSTALL pbdMPI_0.1-6.zip

