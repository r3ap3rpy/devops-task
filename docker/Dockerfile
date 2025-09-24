FROM python:3.12 AS builder
WORKDIR /app
COPY helloapp/ .
RUN pip install -r requirements.txt
RUN pytest -vvv
RUN python -m unittest 

FROM python:3.12-slim
WORKDIR /app
COPY --from=builder /app/app.py /app/app.py
COPY --from=builder /app/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
CMD ["python","app.py"]
