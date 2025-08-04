FROM bitnami/spark:3.5.1

# ✅ เพิ่ม Apache Iceberg runtime JAR: Spark 3.5 + Scala 2.12 + Iceberg 1.9.2
ADD https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-runtime-3.5_2.12/1.9.2/iceberg-spark-runtime-3.5_2.12-1.9.2.jar /opt/bitnami/spark/jars/

# ✅ (optional) ตั้ง working directory เพื่อให้ spark-shell หรือ spark-sql ใช้ง่ายขึ้น
WORKDIR /opt/bitnami/spark
