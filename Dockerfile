# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt ./

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application source code from the app/ directory
COPY . .

# Expose the application port
EXPOSE 8000

# Set the startup command
CMD ["python", "src/app.py"]
