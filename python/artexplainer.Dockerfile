FROM python:3.9.6

COPY artexplainer artexplainer
COPY kfserving kfserving

RUN pip install --upgrade pip && pip install -e ./kfserving
RUN pip install -e ./artexplainer
ENTRYPOINT ["python", "-m", "artserver"]
