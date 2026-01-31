FROM python:3.11-slim

# Tesseract fe'uuf
RUN apt-get update && apt-get install -y tesseract-ocr libtesseract-dev

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

CMD ["python", "main.py"]