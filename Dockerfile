FROM python:3.11-alpine

COPY ./requirements.txt /app/requirements.txt
COPY ./templates/* /app/templates
WORKDIR /app

RUN apk add --no-cache gcc musl-dev linux-headers

RUN pip install -r requirements.txt

COPY app.py /app
EXPOSE 5000
CMD python app.py