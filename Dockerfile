FROM dockerfile/java:openjdk-7-jdk
MAINTAINER Martin Devillers

# download and unzip WSO2 Identity Server
RUN curl http://product-dist.wso2.com/products/identity-server/5.0.0/wso2is-5.0.0.zip > /opt/wso2is.zip && \
    unzip /opt/wso2is.zip -d /opt && \
    rm -f /opt/wso2is.zip

# Setup environment
ENV CARBON_HOME /opt/wso2is-5.0.0
ENV PATH $CARBON_HOME/bin:$PATH

EXPOSE 9443
CMD ["/opt/wso2is-5.0.0/bin/wso2server.sh"]