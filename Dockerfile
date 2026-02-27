FROM python:3.7
COPY . /app
WORKDIR /app
RUN  pip install -r Requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 app:app 