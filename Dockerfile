#Especifico la imagen base  
FROM node:12-alpine 
#Especifico el usario que va a correr 
USER root
RUN mkdir -p /tmp/app
WORKDIR /tmp/app
COPY package.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
