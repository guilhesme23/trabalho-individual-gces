FROM python:3.8

WORKDIR app

RUN pip install poetry

COPY README.md .

ADD pyproject.toml .

ADD src/ ./src/

RUN poetry install

CMD ["poetry", "run", "python", "src/main.py"]

