FROM jupyter/pyspark-notebook:x86_64-ubuntu-22.04
USER root
LABEL  maintainer = "HAZEM OMAR <hazematwwa@gmail.com>"
WORKDIR /usr/local/spark/jars/
RUN apt update && apt upgrade -y
RUN apt install python3-pip -y
RUN pip --version
RUN pip install pandas 
RUN pip install SQLAlchemy
RUN pip install psycopg2-binary 
RUN pip install mysql-connector
COPY mysql-connector-java-9.3.0.jar .
COPY postgresql-42.7.5.jar .
USER jovyan
