FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["SetMa02.libPractice.csproj", "./"]
RUN dotnet restore "SetMa02.libPractice.csproj"
COPY . .
WORKDIR "/src/"
RUN dotnet build "SetMa02.libPractice.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "SetMa02.libPractice.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "SetMa02.libPractice.dll"]
