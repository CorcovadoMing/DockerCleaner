# DockerCleaner
Automatically cleanup dangling volumes

##### Cleanup dangling (unused volumes) every 60 second!

## Build
`$ docker built -t cleaner .`

## Run
`$ docker run -d --name cleaner --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /usr/local/bin/docker:/usr/local/bin/docker cleaner`

Mount the `/var/run/docker.sock` and the binary `/usr/local/bin/docker` into container in order to control docker daemon inside container

## Check
`$ docker logs cleaner`

Double check it's working every 60s, it print out `Checking ...` while launch the cleaning task
