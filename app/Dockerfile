FROM node:latest

WORKDIR /app
ADD package.json /app/
RUN npm config set proxy http://10.254.202.93:80/
RUN npm config set https-proxy http://10.254.202.93:80/
RUN npm install
ADD . /app

EXPOSE 8000
CMD []
ENTRYPOINT ["npm", "start"]
