FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

RUN apk add gcompat

USER container
ENV  USER container
ENV HOME /home/container

ENV DOTNET_BUNDLE_EXTRACT_BASE_DIR=/tmp/dotnet-extract

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]