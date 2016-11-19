FROM debian:8
MAINTAINER poul@poulsander.com
COPY gamecode_build_script.bash /
RUN apt-get update && \
    apt-get install -y build-essential bison zip git && \
    mkdir /data && \
    mkdir /working && \
    chmod 777 /working && \
    chmod 777 /gamecode_build_script.bash

#Result will be placed in this folder
VOLUME ["/data"]

#Ensure that the user is allowed to place files in /data
USER nobody

CMD /gamecode_build_script.bash
