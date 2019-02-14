FROM ubuntu

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;

# Fix certificate issues
RUN apt-get update && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;

# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

RUN apt-get install -y wget

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.2.deb

CMD dpkg -i elasticsearch-6.3.2.deb

RUN rm elasticsearch-6.3.2.deb

EXPOSE 9200
