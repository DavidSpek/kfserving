FROM python:3.9.6-slim

COPY . sklearnserver

RUN pip install --upgrade pip && pip install kfserving
RUN pip install -e ./sklearnserver

ENTRYPOINT ["python", "-m", "sklearnserver", "--model_name", "artserver", "--model_dir", "file://sklearnserver/sklearnserver/example_model"]
