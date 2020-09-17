FROM python:3.6-alpine

RUN apk --update add gcc musl-dev libc-dev

WORKDIR /src
COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
