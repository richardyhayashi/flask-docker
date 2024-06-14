FROM python:3.12.4-alpine

ENV LANG="C.UTF-8"

# Set working directory.
WORKDIR /app

# Copy requirments.txt & install.
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

# Setup the starting of application.
CMD ["gunicorn", "--bind", "0.0.0.0:8888", "app:app"]
