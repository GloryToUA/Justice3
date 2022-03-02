FROM alpine/bombardier

RUN apk update && apk upgrade && apk add bash
COPY ddos.sh ddos.sh

ENTRYPOINT ["bash"]
CMD ["ddos.sh"]
