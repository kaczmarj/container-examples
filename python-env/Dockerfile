FROM python:3.9.6
WORKDIR /opt/mypackage
COPY . .
RUN pip install --no-cache-dir --requirement requirements.txt
ENTRYPOINT ["python3"]
