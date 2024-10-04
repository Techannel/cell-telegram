FROM python:3.10-slim

ENV TERM=xterm

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "-u", "bot.py"]
