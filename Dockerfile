# pull official base image
FROM node:22-alpine

# set work directory
WORKDIR /usr/src/app

# copy project
COPY . /usr/src/app/

# install dependencies
COPY .env.sample .env
RUN npm install

EXPOSE 9000

CMD ["npm start"]
