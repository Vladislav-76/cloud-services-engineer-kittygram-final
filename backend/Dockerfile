FROM python:3.9

WORKDIR /app
RUN apt-get update && apt-get install -y netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
CMD ["gunicorn", "kittygram_backend.wsgi:application", "--bind", "0.0.0.0:9000"]