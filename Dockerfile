FROM python:3.8.16-alpine
RUN python -m pip install --upgrade pip
COPY requirements.txt \requirements.txt
COPY hello.py \hello.py
RUN pip install -r requirements.txt
RUN python hello.py

