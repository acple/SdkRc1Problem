# SdkRc1Problem

```console
❯ docker build --pull . --build-arg SDK_VERSION=rc.2
Sending build context to Docker daemon  264.7kB
Step 1/5 : ARG SDK_VERSION=rc.1
Step 2/5 : FROM mcr.microsoft.com/dotnet/sdk:5.0.100-${SDK_VERSION}-alpine3.12
5.0.100-rc.2-alpine3.12: Pulling from dotnet/sdk
Digest: sha256:ef61bb9a85886c443d9f82b45909a374a546cec9c6a61b7ff5ea62d21cfec11f
Status: Image is up to date for mcr.microsoft.com/dotnet/sdk:5.0.100-rc.2-alpine3.12
 ---> c3910a79cf33
Step 3/5 : COPY . .
 ---> 547c7351a4a2
Step 4/5 : RUN dotnet --info
 ---> Running in ea27af3d5604
.NET SDK (reflecting any global.json):
 Version:   5.0.100-rc.2.20479.15
 Commit:    da7dfa8840

Runtime Environment:
 OS Name:     alpine
 OS Version:  3.12
 OS Platform: Linux
 RID:         alpine.3.12-x64
 Base Path:   /usr/share/dotnet/sdk/5.0.100-rc.2.20479.15/

Host (useful for support):
  Version: 5.0.0-rc.2.20475.5
  Commit:  c5a3f49c88

.NET SDKs installed:
  5.0.100-rc.2.20479.15 [/usr/share/dotnet/sdk]

.NET runtimes installed:
  Microsoft.AspNetCore.App 5.0.0-rc.2.20475.17 [/usr/share/dotnet/shared/Microsoft.AspNetCore.App]
  Microsoft.NETCore.App 5.0.0-rc.2.20475.5 [/usr/share/dotnet/shared/Microsoft.NETCore.App]

To install additional .NET runtimes or SDKs:
  https://aka.ms/dotnet-download
Removing intermediate container ea27af3d5604
 ---> c0b6696ad717
Step 5/5 : RUN dotnet test
 ---> Running in f02e54ecedba
  Determining projects to restore...
  Restored /ClassLibrary1/ClassLibrary1.csproj (in 3.98 sec).
  Restored /UnitTest/UnitTest.csproj (in 22.1 sec).
  You are using a preview version of .NET. See: https://aka.ms/dotnet-core-preview
  You are using a preview version of .NET. See: https://aka.ms/dotnet-core-preview
  ClassLibrary1 -> /ClassLibrary1/bin/Debug/netstandard2.0/ClassLibrary1.dll
/UnitTest/UnitTest1.cs(1,7): error CS0246: The type or namespace name 'ClassLibrary1' could not be found (are you missing a using directive or an assembly reference?) [/UnitTest/UnitTest.csproj]
The command '/bin/sh -c dotnet test' returned a non-zero code: 1
```
