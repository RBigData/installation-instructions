#!/bin/sh

### Installing pbd packages on Stampede
# Note that we need libmpigf in LD_LIBRARY_PATH for compiling
# and loading if using impi

module load R_mkl
module load intel/13.0.079
module load impi
export LD_LIBRARY_PATH=$I_MPI_ROOT/lib64/:$LD_LIBRARY_PATH

export MKLHOME=/opt/apps/intel/13/composer_xe_2013.2.146/mkl/lib/intel64/

export MAKE="/usr/bin/make -j 5"



wget https://cran.r-project.org/src/contrib/rlecuyer_0.3-3.tar.gz

wget https://github.com/wrathematics/pbdMPI/archive/master.zip
unzip master
rm master.zip
mv pbdMPI-master pbdMPI

chmod +x pbdMPI/configure
chmod +x pbdMPI/cleanup

wget https://github.com/snoweye/pbdSLAP/archive/master.zip
unzip master
rm master.zip
mv pbdSLAP-master pbdSLAP

chmod +x pbdSLAP/configure
chmod +x pbdSLAP/cleanup

wget https://github.com/wrathematics/pbdBASE/archive/master.zip
unzip master
rm master.zip
mv pbdBASE-master pbdBASE

wget https://github.com/wrathematics/pbdDMAT/archive/master.zip
unzip master
rm master.zip
mv pbdDMAT-master pbdDMAT



R CMD INSTALL rlecuyer_0.3-3.tar.gz

R CMD INSTALL pbdMPI --configure-args="--with-mpi=$I_MPI_ROOT --with-mpi-include=$I_MPI_ROOT/include64 --with-mpi-libpath=$I_MPI_ROOT/lib64/ --with-mpi-type=INTELMPI"

R CMD INSTALL pbdSLAP --configure-vars="EXT_LDFLAGS='$MKLHOME/libmkl_scalapack_lp64.a $MKLHOME/libmkl_intel_lp64.a $MKLHOME/libmkl_intel_thread.a $MKLHOME/libmkl_core.a $MKLHOME/libmkl_blacs_intelmpi_lp64.a'"

R CMD INSTALL pbdBASE --configure-args="--enable-blacsexport=no"

R CMD INSTALL pbdDMAT
