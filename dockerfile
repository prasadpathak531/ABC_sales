FROM python:3.9

RUN apt-get update && apt-get install -y openjdk-11-jdk

# Set environment variables
ENV PYSPARK_PYTHON=python3
ENV PYSPARK_DRIVER_PYTHON=python3

# Install required libraries
RUN pip install pyspark psycopg2 boto3

# Set working directory
WORKDIR /app

# Copy your Python script to the working directory
COPY ETLcode.ipynb .

# Run your Python script
CMD ["python", "ETLcode.ipynb"]
