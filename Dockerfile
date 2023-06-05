FROM tomcat:8
LABEL app=my-app
RUN pwd
RUN ls -la
ADD ./target/webapp.war /usr/local/tomcat/webapps
EXPOSE 8081
CMD ["catalina.sh", "run"]
