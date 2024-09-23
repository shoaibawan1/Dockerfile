FROM nginx
RUN apt-get update
RUN apt-get install git -y
RUN rm -f /usr/share/nginx/html/*
RUN git clone https://github.com/shoaibawan1/docker-file.git /usr/share/nginx/html
EXPOSE 80
