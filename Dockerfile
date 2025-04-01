# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port 8000 for FastAPI
EXPOSE 8000

# Command to run FastAPI application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
