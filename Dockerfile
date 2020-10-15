ARG SDK_VERSION=rc.1

FROM mcr.microsoft.com/dotnet/sdk:5.0.100-${SDK_VERSION}-alpine3.12
COPY . .
RUN dotnet --info
RUN dotnet test
