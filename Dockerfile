FROM ubuntu:latest
RUN apt-get update; apt-get -y install fortune
ADD fortuneloop.sh /bin/fortuneloop.sh
RUN chmod 744 /bin/fortuneloop.sh
ENTRYPOINT /bin/fortuneloop.sh