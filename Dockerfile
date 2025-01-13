#Java version
FROM openjdk:11-jre as openrefine-image
MAINTAINER sire@abes.fr

#Download a couple of required packages
RUN apt-get update && apt-get install -y wget bash procps

ARG RELEASE=3.8.7
#ARG MEMORY='4500m'
ENV RELEASE=$RELEASE
ENV REFINE_MEMORY=$MEMORY

RUN wget --no-check-certificate https://github.com/OpenRefine/OpenRefine/releases/download/$RELEASE/openrefine-linux-$RELEASE.tar.gz
RUN tar -xzf openrefine-linux-$RELEASE.tar.gz  && rm openrefine-linux-$RELEASE.tar.gz
RUN mkdir /mnt/refine
VOLUME /mnt/refine
EXPOSE 3333
RUN ln -s /openrefine-$RELEASE openrefine
CMD openrefine-$RELEASE/refine -i 0.0.0.0 -d /mnt/refine -m $REFINE_MEMORY
#COPY ./entrypoint.sh /
#RUN chmod +x /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"] 

#Reference:

#Build with default version
#docker build -t abes/openrefine .

#Build with a specific version
#docker build -t abes/openrefine --build-arg RELEASE=3.2 .

##to peek inside the container:
# docker run -i -t abes/openrefine /bin/bash

##to run:
# docker run --rm -d -p 3333:3333 --name openrefine abes/openrefine
