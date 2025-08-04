-- ✅ ตรวจสอบว่ามี Iceberg catalog หรือยัง
SHOW CATALOGS;

-- ✅ ตรวจสอบ schema ที่ Spark ETL สร้างไว้ (เช่น demo)
SHOW SCHEMAS FROM iceberg;

-- ✅ ตรวจสอบว่ามี table ใน schema demo หรือไม่
SHOW TABLES FROM iceberg.demo;

-- ✅ ลอง query ข้อมูล (ถ้ามี Iceberg table อยู่แล้ว)
SELECT * FROM iceberg.demo.users LIMIT 10;
