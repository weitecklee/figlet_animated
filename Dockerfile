FROM alpine
RUN apk update && apk add --no-cache figlet bash
COPY color.sh /usr/local/bin/color.sh
RUN chmod +x /usr/local/bin/color.sh
ENTRYPOINT [ "color.sh", "figlet" ]
