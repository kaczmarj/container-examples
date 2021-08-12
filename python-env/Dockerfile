FROM python:3.9.6
WORKDIR /opt/mypackage
COPY . .
RUN pip install --no-cache-dir --requirements requirements.txt
ENTRYPOINT ["python3"]
