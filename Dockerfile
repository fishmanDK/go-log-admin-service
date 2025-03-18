FROM ubuntu:latest
LABEL authors="desvechnikov"

ENTRYPOINT ["top", "-b"]