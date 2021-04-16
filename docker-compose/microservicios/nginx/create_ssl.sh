#!/bin/bash
SSL_PATH=ssl
SSL_PRIVATE=$SSL_PATH/private
SSL_CERT=$SSL_PATH/certs
#sudo apt-get install -y openssl
openssl genrsa -des3 -out $SSL_PRIVATE/server.key 1024
openssl req -new -key $SSL_PRIVATE/server.key -out $SSL_CERT/server.csr
openssl x509 -req -days 365 -in $SSL_CERT/server.csr -signkey $SSL_PRIVATE/server.key -out $SSL_CERT/server.crt
