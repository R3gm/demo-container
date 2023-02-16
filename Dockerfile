FROM python:3.8

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

RUN pip install -r requirements.txt

COPY webapp/* /webapp

ENTRYPOINT [ "uvicorn" ]

CMD [ "--host", "0.0.0.0", "demo-container-1.0.1:app" ]
