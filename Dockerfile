FROM public.ecr.aws/bitnami/spark:3.5
USER root
WORKDIR /app
COPY pyproject.toml .
COPY src ./src
RUN pip install --no-cache-dir pyspark boto3
CMD ["spark-submit", "/app/src/job.py"]
