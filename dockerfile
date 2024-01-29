FROM alpine
ARG TARGETPLATFORM

RUN apk update && apk add --no-cache aria2 ffmpeg wget bash

RUN wget https://dot.net/v1/dotnet-install.sh -O - | bash

COPY ${TARGETPLATFORM} /usr/bin/BBDown

ENTRYPOINT ["/usr/bin/BBDown", "--work-dir", "/workspace"]
