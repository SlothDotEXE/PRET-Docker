# Pull base image 
FROM codenvy/python27:latest
#Clone PRET to current directory
RUN cd /home/user && git clone https://github.com/RUB-NDS/PRET
#Install pip reqs
RUN sudo pip install colorama pysnmp
#Install apt-get reqs
RUN sudo apt-get install imagemagick ghostscript -y

