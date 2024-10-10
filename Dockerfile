FROM node:16.13.0

ENV TZ=America/Los_Angeles

RUN mkdir /scripts

COPY /srv/jekyll/_site /scripts/out

WORKDIR /scripts

RUN npm install --global serve

ENTRYPOINT ["serve", "-s", "out"]
