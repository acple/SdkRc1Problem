FROM mcr.microsoft.com/dotnet/sdk:5.0.100-rc.1-alpine3.12
COPY . .
RUN dotnet --info
RUN dotnet test
