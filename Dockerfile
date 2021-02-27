FROM tomcat:8.0
ADD /var/lib/jenkins/workspace/Build_Tomcat_Docker_Image/web/target/time-tracker-web-0.5.0-SNAPSHOT.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
