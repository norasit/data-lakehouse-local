# Base image with Java 11
FROM openjdk:11-jdk-slim

# Set environment variables (เฉพาะ PATH ใช้งาน)
ENV SPARK_HOME=/opt/spark
ENV PATH="${SPARK_HOME}/bin:${PATH}"

# Install required packages
RUN apt-get update && \
    apt-get install -y curl wget unzip bash ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download and extract Apache Spark 3.4.4
RUN curl -L https://archive.apache.org/dist/spark/spark-3.4.4/spark-3.4.4-bin-hadoop3.tgz | \
    tar -xz -C /opt/ && \
    ln -s /opt/spark-3.4.4-bin-hadoop3 /opt/spark

# Add Iceberg Spark Runtime JAR (Spark 3.4 + Scala 2.12 + Iceberg 1.5.0)
RUN curl -L https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-3.4_2.12/1.5.0/iceberg-spark-3.4_2.12-1.5.0.jar \
    -o /opt/spark/jars/iceberg-spark-3.4_2.12-1.5.0.jar
