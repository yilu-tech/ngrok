# yilu-ngrok

## how to use

1. server

        $ docker run -v $yourPath:/ngrok/bin/windows_amd64 -p $yourPort:4443 -p $yourPort:80 -e HOSTNAME=$yourDOMAIN yilutech/ngrok 

2. client

        $ ngrok -subdomain=$sub $localport

## access

    http://$sub.$yourDOMAIN