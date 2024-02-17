FROM python:3.12

RUN apt-get install wget 

WORKDIR /code

COPY /ingest_data.py /code/ingest_data.py

RUN pip install pandas psycopg2 postgres SQLAlchemy fastparquet pyarrow

ENTRYPOINT [ "python", "ingest_data.py" ]


