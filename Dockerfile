FROM python:3.10-slim
WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install poetry \
  && poetry config virtualenvs.create false

RUN poetry install