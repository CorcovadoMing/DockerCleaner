# DockerCleaner
Automatically cleanup dangling volumes

##### Cleanup dangling (unused volumes) every 60 second!

## Build
`$ docker built -t rf37535/cleaner .`

## Run
`$ docker run -d --name cleaner --restart=always -v /var/run/docker.sock:/var/run/docker.sock rf37535/cleaner`

Mount `/var/run/docker.sock` into container in order to control docker daemon inside container

## Check
`$ docker logs cleaner`

Double check it's working every 60s, it print out log `Checking dangling volumes` while launch the cleaning task
