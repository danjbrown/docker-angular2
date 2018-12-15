# docker-angular2

Basic example of Dockerizing an Angular2 app.

Clone the repository

Build the Docker image
```
cd /docker-angular2
docker build -t <docker_username>/docker-angular2 .
```

List all Docker images
```
docker images
```

Run the image. Docker maps port 8080 inside the container to port 8000 on your machine
```
docker run -p 8000:8080 -d <docker_username>/docker-angular2
```

List all containers to see where the container can be accessed. e.g. http://0.0.0.0:8000
```
docker ps
```

Clean up
```
docker ps
docker stop <image_id>
docker rmi <image_id>
docker container stop <container_id>
docker container rm <container_id>
```
