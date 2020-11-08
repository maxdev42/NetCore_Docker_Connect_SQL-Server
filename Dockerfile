FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 1433


FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY ["DockerConnectToSqlServer/DockerConnectToSqlServer.csproj", "DockerConnectToSqlServer/"]
RUN dotnet restore "DockerConnectToSqlServer/DockerConnectToSqlServer.csproj"
WORKDIR "/src/DockerConnectToSqlServer"
COPY . .
RUN dotnet build "DockerConnectToSqlServer/DockerConnectToSqlServer.csproj" -c Release -o /app/publish

FROM build AS publish
RUN dotnet publish "DockerConnectToSqlServer/DockerConnectToSqlServer.csproj" -c Release -o /app/publish

FROM build AS final
WORKDIR /app/publish
ENTRYPOINT ["dotnet", "DockerConnectToSqlServer.dll"]