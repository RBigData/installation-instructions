# pbdR Docker Builds

Docker build configurations for the pbdR package ecosystem.  Builds are hosted on [Docker Hub](https://hub.docker.com/u/rbigdata/).  You can find the Dockerfiles at [our github repo](https://github.com/RBigData/docker).



## Workshop/Tutorial

If you are attending a pbdR workshop/tutorial, then you will want to install the pbdr-workshop build.  Simply run:

```bash
sudo docker run -i -t rbigdata/pbdr-workshop
```

You can interact with the running container in the same way as outlined in the "Compute" subsection below.  To learn how to access files from your host machine, see the previous section.



## Compute

```bash
sudo docker run -i -t rbigdata/pbdr-compute
```


Create your pbdR script as usual and run it via mpirun. Take this simple "hello world" for example:

```r
suppressPackageStartupMessages(library(pbdMPI))

comm.print(
  paste("Hello from rank", comm.rank(), "of", comm.size()),
  all.rank=TRUE
)

finalize()
```

Then run the script via:

```bash
mpirun -np 2 r myscript.r
```


## Client/Server

```bash
sudo docker run -i -t -p 55555:55555 rbigdata/pbdr-cs
```

To connect to the server, you will need to install the `remoter` package:

```r
install.packages("remoter")
```

Then from your local R or RStudio session, you can connect to the server by running:

```r
remoter::client()
```
