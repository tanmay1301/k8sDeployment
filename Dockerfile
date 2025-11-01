FROM nginx:latest

WORKDIR /usr/share/nginx/html

RUN rn -rf ./*

COPY index.html ./

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
