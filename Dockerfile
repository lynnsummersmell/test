FROM tomcat

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME


COPY index.html /usr/local/tomcat/webapps
COPY tomcat_mysql.jsp /usr/local/tomcat/webapps
COPY tomcat_mysql2.jsp /usr/local/tomcat/webapps


EXPOSE 8080
CMD ["catalina.sh", "run"]
