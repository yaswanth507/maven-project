FROM tomcat:8
LABEL app=my-app
COPY /var/lib/jenkins/workspace/pipeline/webapp/target/webapp.war /home/ubuntu/
CMD ["java","-jar","/home/ubuntu/webapp.war"]
