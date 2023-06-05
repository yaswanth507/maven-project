FROM tomcat:8
LABEL app=my-app
COPY *.war /home/ubuntu/
CMD ["java","-jar","/home/ubuntu/webapp.war"]
