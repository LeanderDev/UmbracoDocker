# UmbracoDocker
A way to set up an as simple as possible docker container with an as simple as possible Umbraco site in it.


To run: 

- Install Docker Desktop on https://hub.docker.com/editions/community/docker-ce-desktop-windows

- Open your terminal of choice in the directory where you cloned the repo.

- Run the following commands
docker build --force-rm -t umbracodockerimage .
docker run -d -v "{Absolute path to the folder of the locally stored repo}:C:\inetpub\wwwroot" -P --name umbracodockercontainer umbracodockerimage

-then in order to browse your application
docker exec -it umbracodockersite ipconfig
there you can copy and browse to the IPv4 Adress



