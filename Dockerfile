FROM python:3.13

WORKDIR /app

COPY requirement.txt /tmp/requirement.txt

RUN pip install --no-cache-dir -r /tmp/requirement.txt

COPY app/ .

EXPOSE 5000

CMD ["python", "main.py"]
