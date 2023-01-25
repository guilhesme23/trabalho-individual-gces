FROM python:3.8

WORKDIR app

ADD requirements.txt .

ADD src/ ./src/

RUN pip install -r requirements.txt

CMD ["python", "src/main.py"]

