FROM python:3.7-slim-buster

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "app.py"]