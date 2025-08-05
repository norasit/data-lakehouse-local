#!/bin/bash
echo ">> Creating Iceberg namespace with Spark..."

${SPARK_HOME}/bin/spark-sql \
  --conf spark.sql.catalog.iceberg=org.apache.iceberg.spark.SparkCatalog \
  --conf spark.sql.catalog.iceberg.catalog-type=hive \
  --conf spark.sql.catalog.iceberg.uri=thrift://hive-metastore:9083 \
  --conf spark.sql.catalog.iceberg.warehouse=s3a://lakehouse-data/warehouse \
  --conf spark.hadoop.fs.s3a.access.key=minioadmin \
  --conf spark.hadoop.fs.s3a.secret.key=minioadmin \
  --conf spark.hadoop.fs.s3a.endpoint=http://minio:9000 \
  --conf spark.hadoop.fs.s3a.path.style.access=true \
  --conf spark.hadoop.fs.s3a.impl=org.apache.hadoop.fs.s3a.S3AFileSystem \
  --conf spark.jars.ivy=/tmp/.ivy \
  -e "CREATE DATABASE IF NOT EXISTS iceberg.demo;"
