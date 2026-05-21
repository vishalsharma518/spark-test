from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("APP_NAME_PLACEHOLDER").getOrCreate()

data = [("Alice",100),("Bob",200)]

df = spark.createDataFrame(data,["name","value"])

df.show()

spark.stop()
