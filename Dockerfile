FROM jekyll/jekyll:4.0
COPY . /srv/jekyll
EXPOSE 4000
ENTRYPOINT jekyll serve --verbose --host 0.0.0.0
