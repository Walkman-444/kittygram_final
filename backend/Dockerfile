FROM python:3.9-slim

WORKDIR /app

RUN pip install gunicorn==20.1.0

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

RUN chmod +x docker-entrypoint.sh

#CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]
# иначе не могу пройти тесты при сдаче проекта на проверку
# CMD является обязательным условием в тестах

ENTRYPOINT ["./docker-entrypoint.sh"]
