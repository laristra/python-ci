FROM python:2.7


RUN PYTHON main.py

COPY . /python-ci
