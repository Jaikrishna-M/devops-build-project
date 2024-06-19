FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY build/ .
CMD ["nginx", "-g", "daemon off;"]
