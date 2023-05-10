FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN apt-get update && apt-get install -y default-libmysqlclient-dev gcc
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
