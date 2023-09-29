FROM python:3

WORKDIR /data

RUN pip install django==2.1.2

RUN pip install django-crispy-forms

RUN pip install Pillow 
 
COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
