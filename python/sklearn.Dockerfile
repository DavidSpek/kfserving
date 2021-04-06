FROM python:3.9.4-slim

COPY sklearnserver sklearnserver
COPY kfserving kfserving

RUN pip install --upgrade pip && pip install -e ./kfserving
RUN pip install -e ./sklearnserver
COPY third_party third_party

ENTRYPOINT ["python", "-m", "sklearnserver"]
