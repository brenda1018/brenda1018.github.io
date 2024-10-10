FROM node:16.13.0

ENV TZ=America/Los_Angeles

RUN mkdir -p /scripts/out

COPY ./out/favicon.ico /scripts/out/
COPY ./out/index.html /scripts/out/
COPY ./out/print.html /scripts/out/
COPY ./out/assets /scripts/out/assets

WORKDIR /scripts

RUN npm install --global serve

ENTRYPOINT ["serve", "-s", "out"]
