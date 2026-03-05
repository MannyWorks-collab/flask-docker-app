# 1) Start from a small Python image
FROM python:3.11-slim

# 2) Create and set working directory inside the container
WORKDIR /app

# 3) Copy requirements first (better caching)
COPY requirements.txt .

# 4) Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5) Copy the rest of the app files
COPY . .

# 6) Expose the port Flask will run on
EXPOSE 5000

# 7) Run the app
CMD ["python", "app.py"]