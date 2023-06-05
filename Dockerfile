FROM tomcat:8
LABEL app=my-app
RUN PWD
RUN ls -la
COPY /var/lib/jenkins/workspace/pipeline/webapp/target/webapp.war /home/ubuntu/
CMD ["java","-jar","/home/ubuntu/webapp.war"]
