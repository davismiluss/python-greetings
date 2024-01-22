FROM python:3-alpine
LABEL "AUTHOR"="Davis Miluss" "DESCRIPTION"="Docker image for JR CI_CD Docker course"
WORKDIR /app

COPY app.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 3000

CMD ["python", "app.py"]