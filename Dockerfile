From tomcat:9-jre11
ADD target/devopssampleapplication.war /usr/local/tomcat/webapps/
RUN /bin/sh /usr/local/tomcat/bin/startup.sh