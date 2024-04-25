# Use an official Python runtime as a parent image
FROM python:3.7-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies for OpenCV and pytesseract
RUN apt-get update && \
    apt-get install -y libopencv-dev tesseract-ocr libtesseract-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port available to the world outside this container
EXPOSE $PORT

# Define environment variable
ENV TESSDATA_PREFIX=/usr/share/tesseract-ocr/4.00/tessdata

# Run app.py when the container launches
CMD gunicorn --workers=2 --threads=4 --bind 0.0.0.0:$PORT app:app
