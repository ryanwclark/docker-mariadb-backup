FROM ryanwclark/alpine:3.13
LABEL maintainer="Ryan Clark (ryanwclark@yahoo.com)"

### Set Environment Variables
   ENV ENABLE_SMTP=FALSE

### Dependencies
   RUN apk update && \
       apk add \
       	   mysql-client \
    	   bzip2 \  
    	   xz && \
       rm -rf /var/cache/apk/* 

### S6 Setup
   ADD install/s6 /etc/s6

### Entrypoint Configuration  
   ENTRYPOINT ["/init"]

