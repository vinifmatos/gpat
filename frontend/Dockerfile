FROM node:20.13-alpine as angular
WORKDIR /app
COPY package.json /app
RUN npm install --silent
COPY . .
EXPOSE 4200
RUN npm run build

FROM nginx:alpine
VOLUME /var/cache/nginx
COPY --from=angular app/dist/gpat/browser /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf