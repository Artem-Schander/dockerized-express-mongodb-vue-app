FROM node:10

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm

RUN apt-get update
RUN apt-get install git --assume-yes
RUN apt-get install bzip2 --assume-yes
RUN apt-get install python --assume-yes

RUN npm install --quiet --global \
    nodemon \
    babel-cli \
    express-generator

ADD init.sh /sbin/init-express.sh
# RUN chmod +x /sbin/init-express.sh

# Create app directory
WORKDIR /var/www/express

EXPOSE 3000
