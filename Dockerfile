FROM python:2.7.16-jessie

RUN pip install flask wget
RUN pip install pandas cassandra-driver
RUN pip install Pillow scp


COPY . /app
WORKDIR /app

CMD ["python", "main.py"]
