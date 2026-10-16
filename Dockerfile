FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

EXPOSE 5001

CMD ["python", "app.py"]
