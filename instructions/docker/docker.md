# Installing Docker

Before proceeding, you must first install Docker on your system.  This is either painless or completely impossible, depending on what OS version you are running.


## Windows

Windows 10 or later is required.  If you are not sure which version of windows you are running, see the Microsoft support article [Which Windows operating system am I running](https://support.microsoft.com/en-ca/help/13443/windows-which-operating-system).

If you meet the requirements, then you should install the [Docker Community Edition for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows?tab=description).  There are also [detailed installation instructions](https://docs.docker.com/docker-for-windows/#explore-the-application-and-run-examples) available if something goes wrong.



## Mac

OS X El Capitan 10.11 or later is required.  If you are not sure which version of OS X / macOS you are running, see the Apple support article [Find the macOS version number on your Mac](https://support.apple.com/en-us/HT201260).

If you meet the requirements, then you should install the [Docker Community Edition for Mac](https://store.docker.com/editions/community/docker-ce-desktop-mac?tab=description).  There are also [detailed installation instructions](https://docs.docker.com/docker-for-mac/) available if something goes wrong.



## Linux

Many modern distributions have Docker packages available in the software repository.  For example:

* deb (Debian, Ubuntu): `apt-get install docker.io`
* rpm (Fedora, Centos): `yum install docker-io`

If your distribution does not have Docker available in the repo, try searching the [Docker Community Editions](https://store.docker.com/search?offering=community&type=edition).





# Using Docker

## Basics

Generally working with someone else's docker container is pretty simple (building your own can be another matter entirely).  Most often you will enter a `docker run` command at the command line and then interact with the container either at the command line, or via a web service or the like.

There is a "hello world" test you can run to make sure that everything is working.  Simply enter:

```bash
docker run hello-world
```

and you should see a quick bit out output explaining that everything worked properly.  If you get an error like `Cannot connect to the Docker daemon`, then you need to run the container as an administrator.

For more information, you are encouraged to read the [orientation and setup guide](https://docs.docker.com/get-started/) from the official Docker documentation.


## Mounting Host Directories

You will probably want to be able to access files from your "host" system (not the container) inside of the container.  Fortunately, this is not difficult to do.  All you need to do is add a simple flag to your launch command.  Namely, you add: `-v HOST_DIRECTORY:CONTAINER_DIRECTORY`, where of course the "host" and "container" directories are actual paths.

So for example, say you want to launch the workshop container described in the next section.  The instructions say to run:

```bash
sudo docker run -i -t rbigdata/pbdr-workshop
```

But say you want to connect the host directory `/tmp/docker/` (something like `c:\tmp\docker` on windows) to `/home/pbdR/` on the container.  You could run:

```bash
sudo docker run -i -t -v /tmp/docker:/home/pbdR rbigdata/pbdr-workshop
```

Then any file you put into your directory on your host system will be available at the home directory.  For more details, see [the official Docker documentation](https://docs.docker.com/engine/tutorials/dockervolumes/#mount-a-host-directory-as-a-data-volume).
