# Requirements
This project requires the following:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04) 
- [npm] https://nodejs.dev/en/learn/an-introduction-to-the-npm-package-manager/
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)

## Dockerfile directives used in the creation each container.
`FROM`
`WORKDIR`
`COPY`
`RUN`
`CMD`
`ENVIRONMENT`

## Docker-compose Networking (Application port allocation and a bridge network implementation) where necessary.
`Created a single bridge network to connect both client and backend`
 `network1:`

## Git workflow used to achieve the task.
 `Centralized GIT workflow`

## Docker-compose volume definition and usage (where necessary).
 `volumes: data: volume required for backend app`

 ## Database container added from latest Mongodb repository.
 `image: mongo:latest`

 ## Successful running of the applications and if not, debugging measures applied.
 `Application was able to run successfully when provided credentails on backend/.env`

 ## Good practices such as Docker image tag naming standards for ease of identification of images and containers.
 `Implemented semver on images yolo_backend:v1.0.1 and yolo_client:v1.0.1`


 ### Go ahead and add a product (note that the price field only takes a numeric input)