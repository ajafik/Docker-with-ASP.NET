FROM microsoft/dotnet:latest
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN dotnet restore
RUN dotnet build
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT docker
ENTRYPOINT dotnet run