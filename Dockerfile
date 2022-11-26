FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update 
RUN apt-get -qq –y install apache2 
RUN apt-get -qq –y install apache2-utils 
RUN apt-get clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]