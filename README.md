This is my project in rails for a gallery. It allows users to create and edit/delete their own galleries of images and upload images into the gallery that they own.

Things about the project...

Prerequisites
The setups steps expect following tools installed on the system.

Github
Ruby 3.0.2
Rails 5.0.2

Make sure you've installed

Docker
docker-compose

 
 Database creation

$ docker-compose run web rails db:create
$ docker-compose run web rails db:migrate



Deployment instructions

I have dockerized this project and allowed for you to run this within docker.
