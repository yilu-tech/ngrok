FROM golang:alpine

RUN echo "https://mirrors.aliyun.com/alpine/v3.7/main" > /etc/apk/repositories \
 && echo "https://mirrors.aliyun.com/alpine/v3.7/community" >> /etc/apk/repositories

RUN apk update
RUN apk add --update alpine-sdk git

RUN git clone https://github.com/inconshreveable/ngrok.git /ngrok
COPY startup /startup

VOLUME [ "/ngrok/bin/windows_amd64" ]
EXPOSE 4443 80 443
WORKDIR /ngrok
CMD ["/startup"]