# 1. Use official Python image
FROM python:3.9-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy dependency list to the container
COPY requirements.txt .

# 4. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy application code to the container
COPY app.py .

# 6. Expose port 5000 (Flask default)
EXPOSE 5000

# 7. Run the app when the container starts
CMD ["python", "app.py"]
