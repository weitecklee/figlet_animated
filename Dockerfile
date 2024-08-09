FROM alpine
RUN apk update && \
  apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing --update lolcat figlet
ENV WAIT=0.04
COPY color.sh /usr/local/bin/color.sh
COPY fonts /usr/share/fonts
RUN chmod +x /usr/local/bin/color.sh
ENTRYPOINT [ "color.sh" ]
