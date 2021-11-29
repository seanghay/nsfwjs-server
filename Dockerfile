FROM node:14-buster-slim

RUN apt-get update && \ 
  apt-get install -y build-essential \
  wget \
  python3 \
  make \
  gcc \ 
  libc6-dev 

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
