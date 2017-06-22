FROM python:2.7


RUN python.main.py

COPY . /python-ci
