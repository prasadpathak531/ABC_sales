FROM python:3.9

RUN apt-get update && apt-get install -y openjdk-11-jdk


ENV PYSPARK_PYTHON=python3
ENV PYSPARK_DRIVER_PYTHON=python3


RUN pip install pyspark psycopg2 boto3


WORKDIR /app


COPY etl.py .


CMD ["python", "etl.py"]
