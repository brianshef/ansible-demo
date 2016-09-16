# centos-node-hello
A simple hello world NodeJS app, using Docker

# Build
Build the Docker image with the following command:
`./build.sh`

# Run
Running the image with `-d` runs the container in detached mode,
leaving the container running in the background.
The `-p` flag redirects a public port to a private port in the container.
Run the image you previously built with the following command:
`./run.sh`

Print the output of the app:
```
# Get container ID
docker ps

# Print app output
docker logs <container id>

# Example
Running on http://localhost:8080
```

# Test
( Assuming the Docker machine is named `default` )
```
curl $(docker-machine ip default):49160
```
