# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements first (better for caching)
COPY req.txt .

# Install dependencies
RUN pip install --no-cache-dir -r req.txt

# Copy the rest of the app
COPY . .

# Expose the app port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

