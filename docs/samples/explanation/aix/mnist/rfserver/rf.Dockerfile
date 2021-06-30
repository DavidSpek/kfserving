FROM python:3.9.6

COPY . .
RUN pip install --upgrade pip && pip install kfserving==0.4.1
RUN pip install -e .
ENTRYPOINT ["python", "-m", "rfserver", "--model_name", "aixserver"]
