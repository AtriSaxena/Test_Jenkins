FROM python:3.8.16
RUN python -m pip install --upgrade pip
RUN apt-get update
RUN apt-get install libblas-dev liblapack-dev libatlas-base-dev gfortran
COPY requirements.txt \requirements.txt
COPY hello.py \hello.py
RUN pip install -r requirements.txt
RUN python hello.py

