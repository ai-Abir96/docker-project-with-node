FROM node:14-alpine

WORKDIR /usr/myApp
# copy package.json to workdir and run npm install
COPY ./package.json ./   
RUN npm install
#then copy everything to workdir
COPY ./ ./

CMD ["npm", "start"]