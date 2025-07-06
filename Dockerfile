FROM python:3.12-slim

WORKDIR /app
COPY app.py .
COPY test_app.py .

# Download pytest
RUN pip install pytest

CMD ["python", "app.py"]
