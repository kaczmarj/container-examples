FROM ubuntu:18.04
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
         bedtools \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["bedtools"]
