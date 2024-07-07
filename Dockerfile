
FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /main

COPY . /main

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]
