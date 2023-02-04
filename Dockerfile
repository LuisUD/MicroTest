FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS build-env

WORKDIR /app

COPY . .

RUN dotnet restore -r linux-musl-x64

RUN dotnet publish -c Release -o /app -r linux-musl-x64 --no-restore

CMD [ "echo", "Hola mundo" ]












