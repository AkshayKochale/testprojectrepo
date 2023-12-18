FROM ubuntu

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle
ENV PATH=$PATH:$JAVA_HOME/bin

# Set working directory
WORKDIR /home

# Expose port 8080
EXPOSE 8080

# Copy the JAR file
COPY ./SpringSecurity-0.0.1-SNAPSHOT.jar .

# Run the application
CMD ["java", "-jar", "./SpringSecurity-0.0.1-SNAPSHOT.jar"]
