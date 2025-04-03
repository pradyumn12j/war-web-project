FROM tomcat
COPY /var/lib/jenkins/workspace/hey/target/wwp-1.0.0.war /usr/local/tomcat/webapps/
