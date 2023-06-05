FROM tomcat:8
LABEL app=my-app
COPY target/*.war /home/ubuntu/
CMD ["java","-jar","/home/ubuntu/webapp.war"]
