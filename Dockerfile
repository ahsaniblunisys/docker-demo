FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update 
RUN apt-get install -qq –y apache2 
RUN apt-get install -qq –y apache2-utils 
RUN apt-get clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]