# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set a working directory
WORKDIR /app

# Copy files
COPY requirements.txt ./

# install any packages needed in requirement.txt
RUN pip install --no-cache-dir -r requirements.txt

# copy rest of files
COPY dev.py

# Run the application
CMD ["python", "dev.py"]
