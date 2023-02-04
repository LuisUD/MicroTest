FROM mcr.microsoft.com/dotnet/sdk:7.0-jammy AS build-env

WORKDIR /base

COPY *.csproj .

RUN dotnet restore -r linux-x64

COPY . .

RUN dotnet publish -c Release -o /publish -r linux-x64 --no-restore

FROM mcr.microsoft.com/dotnet/runtime-deps:7.0-jammy-amd64

WORKDIR /app

COPY --from=build-env publish .

ENTRYPOINT [ "dotnet" ]

CMD [ "Microservice.dll" ]












