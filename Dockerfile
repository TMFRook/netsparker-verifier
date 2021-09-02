FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
# FROM selenium/standalone-chrome-debug:latest

USER root

WORKDIR /root

COPY Netsparker_Enterprise_Verifier_Agent.tar Netsparker_Enterprise_Verifier_Agent.tar

RUN tar xvf Netsparker_Enterprise_Verifier_Agent.tar

COPY appsettings.json ./bin/appsettings.json

ENTRYPOINT ["/usr/bin/dotnet", "./bin/Netsparker.Cloud.Agent.dll"]
