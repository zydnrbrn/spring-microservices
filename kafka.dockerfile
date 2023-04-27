# Use jdk 11
FROM openjdk:11-jdk-alpine

# Set environment variables
ENV KAFKA_VERSION=3.4.0
ENV KAFKA_HOME=/opt/kafka_"$KAFKA_VERSION"

# Add Kafka binary to image
ADD kafka_"$KAFKA_VERSION" /opt/kafka_"$KAFKA_VERSION"

# Expose Kafka ports
EXPOSE 9092 2181

# Set working directory to Kafka home
WORKDIR $KAFKA_HOME

# Start Kafka
CMD ["kafka/bin/kafka-server-start.sh", "kafka/config/server.properties"]
