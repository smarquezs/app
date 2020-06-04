# README

#### Run Application

This application uses docker, so you need to run the following commands.

To build the image (only once)
```bash
$ docker-compose build
```

Every time you need to run the application:

```bash
$ docker-compose up -d
```

To check in which port the application is running:

```bash
$ docker ps
```

Copy the port if the port is `32769`, go to the browser and open [http://localhost:32769](http://localhost:32769)

That it's