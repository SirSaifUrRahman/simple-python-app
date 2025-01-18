# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# expose port on 5000 where the app will run. example: http://localhost:5000

# Set ENTRYPOINT to Python
ENTRYPOINT ["python", "run.py"]
