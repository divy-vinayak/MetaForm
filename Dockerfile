# Use an official Python runtime as a parent image
FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "./entrypoint.sh" ]
