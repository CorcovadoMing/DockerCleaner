FROM docker

ADD cleanup-docker-volumes /usr/local/bin/clean-docker-volumes
RUN chmod +x /usr/local/bin/clean-docker-volumes
CMD ["/usr/local/bin/clean-docker-volumes"]
