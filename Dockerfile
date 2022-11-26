FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update 
RUN sudo apt-get install apache2 
RUN sudo apt-get install apache2-utils 
RUN apt-get clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]