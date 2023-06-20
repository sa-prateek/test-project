FROM adoptopenjdk:11-jre-hotspot

# Install Docker inside the container
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

# Grant permissions to the Jenkins user
RUN usermod -aG docker jenkins

WORKDIR /app

COPY target/hello-world-0.0.1-SNAPSHOT.jar hello-world.jar

EXPOSE 8080

CMD ["java", "-jar", "hello-world.jar"]
