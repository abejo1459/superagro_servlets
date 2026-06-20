FROM tomcat:10.1

COPY target/superagro.war /usr/local/tomcat/webapps/

EXPOSE 8080