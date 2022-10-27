FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

RUN apk add gcompat

# USER container
# ENV  USER container
# ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]