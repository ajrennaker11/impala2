FROM docker.repository.cloudera.com/cdsw/engine:4

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN apt-get install krb5-user -y 
RUN apt-get install unixodbc -y
RUN apt-get install unixodbc-dev -y

RUN wget https://downloads.cloudera.com/connectors/impala_odbc_2.6.0.1000/Debian/clouderaimpalaodbc_2.6.0.1000-2_amd64.deb
RUN apt install -y ./clouderaimpalaodbc_2.6.0.1000-2_amd64.deb
