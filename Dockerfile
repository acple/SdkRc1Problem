FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine
COPY . .
RUN dotnet --info
RUN dotnet test
