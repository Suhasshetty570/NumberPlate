FROM python:3.7

# Copy the local code to the container image.
COPY . /app

# Set the working directory in the container.
WORKDIR /app

# Install dependencies.
RUN pip install --no-cache-dir -r requirements.txt

# Inform Docker that the container listens on the specified port at runtime.
# Note: The PORT environment variable should be set by the runtime environment (like Heroku).
EXPOSE $PORT

# Command to run the application using Gunicorn.
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app