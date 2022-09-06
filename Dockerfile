FROM node:alpine 

WORKDIR /app 

COPY . . 

RUN npm install 

RUN npm run build --prod 

#stage 2 

FROM nginx:alpine 

COPY dist/angular-action /usr/share/nginx/html 
