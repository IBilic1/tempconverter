FROM python:3.8-slim
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get upgrade -y
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install waitress Flask

EXPOSE 5000

CMD ["python", "app.py"]
