FROM python:3.8-slim

ADD requirements.txt /src/requirements.txt
ADD handlers.py /src/handlers.py

RUN pip install -r /src/requirements.txt

CMD kopf run /src/handlers.py --namespace '*'
