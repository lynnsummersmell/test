FROM tomcat

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME


COPY /var/lib/jenkins/workspace/k8s-test/tt.out /usr/local/tomcat/webapps

EXPOSE 8080
CMD ["catalina.sh", "run"]
