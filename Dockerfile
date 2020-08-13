FROM yexianyi/oracle-jdk:centos7

WORKDIR /home

RUN wget -O oracle-xe.tar.gz "wget https://download.oracle.com/otn-pub/otn_software/db-express/oracle-database-xe-18c-1.0-1.x86_64.rpm?xd_co_f=2716e76484a7677d2761597207837298"

EXPOSE 1521
