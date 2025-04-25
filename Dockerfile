FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy all project files
COPY . .

# Install Flask (no annoying PEP 668 errors here)
RUN pip install --no-cache-dir Flask

# Set environment variable for Flask
ENV FLASK_APP=app.py

# Expose Flask's default port
EXPOSE 5000

# Start the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
