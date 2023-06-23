
FROM ghcr.io/catthehacker/ubuntu:act-latest

# Install Maven
RUN apt-get update; \
    apt-get -y install unzip; \
    mvnVersion=3.9.2; \
    curl -sL https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/${mvnVersion}/apache-maven-${mvnVersion}-bin.zip -o maven.zip; \
    unzip -d /usr/share maven.zip; \
    rm maven.zip; \
    ln -s /usr/share/apache-maven-${mvnVersion}/bin/mvn /usr/bin/mvn; \
    echo "M2_HOME=/usr/share/apache-maven-${mvnVersion}" | tee -a /etc/environment
