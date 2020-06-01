FROM python:3.8

ARG USER
ARG PASSW

WORKDIR app
COPY safaribooks.py .
COPY requirements.txt .
COPY book.sh .
RUN chmod +x book.sh

RUN apt update && apt install fd-find && apt-get clean
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "safaribooks.py", "--cred", "$USER:${PASSW}"]