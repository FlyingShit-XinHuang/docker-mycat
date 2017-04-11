# Overview
This project is used to Dockerize the Mycat server

# Build

Build image:

```
docker build -t mycat:1.6 .
```

Want to build with other releases of Mycat? Find the corresponding URL in http://dl.mycat.io/ and build the image:

```
docker build --build-arg mycat_src=<URL of the package> -t mycat .
```

The image can also be built with local package:

```
docker build -f local.Dockerfile -t mycat:1.6 .
```
