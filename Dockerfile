FROM tomcat:8.0
COPY ./target/*.war $CATALINA_HOME/webapps/
