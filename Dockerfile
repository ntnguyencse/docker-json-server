FROM node@sha256:91e37377b960d0b15d3c15d15321084163bc8d950e14f77bbc84ab23cf3d6da7
# Image: node:lts-hydrogen
# https://hub.docker.com/layers/library/node/lts-hydrogen/images/sha256-91e37377b960d0b15d3c15d15321084163bc8d950e14f77bbc84ab23cf3d6da7?context=explore
# DIGEST:sha256:91e37377b960d0b15d3c15d15321084163bc8d950e14f77bbc84ab23cf3d6da7
LABEL MAINTAINER="NGUYEN THANH NGUYEN ntnguyencse@gmail.com"
RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
