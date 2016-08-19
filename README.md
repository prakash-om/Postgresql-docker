# Postgresql-docker

After downloading zip go inside the folder and execute below command

$ docker build -t postgresapp .
  this will build the postgresql container 
  
$ docker images
  to see the postgresapp is built

$ docker run --name postgresappc -p 5432:5432 postgresapp
  now your container will get start and you can connect to postgres DB
  

