# SdkRc1Problem

```console
❯ docker build --pull .
Sending build context to Docker daemon  264.2kB
Step 1/4 : FROM mcr.microsoft.com/dotnet/sdk:5.0.100-rc.1-alpine3.12
5.0.100-rc.1-alpine3.12: Pulling from dotnet/sdk
Digest: sha256:8cbe364ac8e368268da8b6fbff5010ee43b4ab6a14422e3b75cedd03e3c45b50
Status: Image is up to date for mcr.microsoft.com/dotnet/sdk:5.0.100-rc.1-alpine3.12
 ---> ad37049370b0
Step 2/4 : COPY . .
 ---> 24f3c13907ba
  1 FROM mcr.microsoft.com/dotnet/sdk:5.0.100-rc.2-alpine3.12
Step 3/4 : RUN dotnet --info
 ---> Running in 6e6f0e5e7b95
.NET SDK (reflecting any global.json):
 Version:   5.0.100-rc.1.20452.10
 Commit:    473d1b592e

Runtime Environment:
 OS Name:     alpine
 OS Version:  3.12
 OS Platform: Linux
 RID:         alpine.3.12-x64
 Base Path:   /usr/share/dotnet/sdk/5.0.100-rc.1.20452.10/

Host (useful for support):
  Version: 5.0.0-rc.1.20451.14
  Commit:  38017c3935

.NET SDKs installed:
  5.0.100-rc.1.20452.10 [/usr/share/dotnet/sdk]

.NET runtimes installed:
  Microsoft.AspNetCore.App 5.0.0-rc.1.20451.17 [/usr/share/dotnet/shared/Microsoft.AspNetCore.App]
  Microsoft.NETCore.App 5.0.0-rc.1.20451.14 [/usr/share/dotnet/shared/Microsoft.NETCore.App]

To install additional .NET runtimes or SDKs:
  https://aka.ms/dotnet-download
Removing intermediate container 6e6f0e5e7b95
 ---> 727a8379da03
Step 4/4 : RUN dotnet test
 ---> Running in 963f7bd7af95
  Determining projects to restore...
  Restored /ClassLibrary1/ClassLibrary1.csproj (in 5.83 sec).
  Restored /SdkRc1Problem/SdkRc1Problem.csproj (in 21.97 sec).
  You are using a preview version of .NET. See: https://aka.ms/dotnet-core-preview
  You are using a preview version of .NET. See: https://aka.ms/dotnet-core-preview
  ClassLibrary1 -> /ClassLibrary1/bin/Debug/netstandard2.0/ClassLibrary1.dll
/SdkRc1Problem/UnitTest1.cs(1,7): error CS0246: The type or namespace name 'ClassLibrary1' could not be found (are you missing a using directive or an assembly reference?) [/SdkRc1Problem/SdkRc1Problem.csproj]
The command '/bin/sh -c dotnet test' returned a non-zero code: 1
```
