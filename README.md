# Customize nginx dockerfile
Base on docker nginx 1.12.2 stable to generate a customize nginx image, the sample resource will return a local index.html

## Preparation
1. Put the static resources (ex: index.html, *.jpg ... ) what you need in $repo_dir/data
2. Define the nginx server configuration as portal.conf
3. Build docker image

## Build docker image
```
cd $repo_dir
docker build -t $image_name -f dockerfile.nginx .
```

## Docker run
1. docker run -d -p 8080:80 $image_name
2. use curl http://localhost:8080 to view the testing page

