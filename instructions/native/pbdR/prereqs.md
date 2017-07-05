# pbdR Pre-reqs

## MPI

### Windows

Install [MS-MPI](https://msdn.microsoft.com/en-us/library/bb524831(v=vs.85).aspx)


### Mac

We recommend OpenMPI:

* From [Homebrew](https://brew.sh/): enter `brew install open-mpi` in a terminal
* From [MacPorts](https://www.macports.org/}{MacPorts): enter `sudo port install openmpi` in a terminal
* You can also [build from source](https://www.open-mpi.org/software/ompi/v2.1/)



### Linux/FreeBSD

We recommend [OpenMPI](https://www.open-mpi.org/software/ompi/v2.1/), which is likely available from your package manager:

* deb (Debian, Ubuntu): `apt-get install libopenmpi-dev`
* rpm (Fedora, Centos): `yum install openmpi-devel`
* FreeBSD: `pkg install openmpi`

You can also [build from source](https://www.open-mpi.org/software/ompi/v2.1/).
