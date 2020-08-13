FROM yexianyi/oracle-jdk:centos7

WORKDIR /home

RUN wget https://download.oracle.com/otn-pub/otn_software/db-express/oracle-database-xe-18c-1.0-1.x86_64.rpm?xd_co_f=2716e76484a7677d2761597207837298 \
&& curl -o oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm https://yum.oracle.com/repo/OracleLinux/OL7/latest/x86_64/getPackage/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm \
&& yum -y localinstall oracle-database*18c*

CMD /etc/init.d/oracle-xe-18c configure

EXPOSE 1521
