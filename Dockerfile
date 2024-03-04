FROM python:3.9.1

RUN apt-get update && apt-get install -y wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY Ingest_data.py Ingest_data.py 

ENTRYPOINT [ "python", "Ingest_data.py" ]


