# ==========================================
# STAGE 1: Builder
# ==========================================
FROM python:3.9 AS builder

WORKDIR /app
COPY requirements.txt .

# Compile dependencies into wheels
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /app/wheels -r requirements.txt


# ==========================================
# STAGE 2: Runner
# ==========================================
FROM python:3.9-slim

WORKDIR /app

# Copy wheels and requirements from the builder stage
COPY --from=builder /app/wheels /wheels
COPY --from=builder /app/requirements.txt .

# Install dependencies without compiling
RUN pip install --no-cache /wheels/*

# Copy the application code
COPY app.py .

EXPOSE 5000
CMD ["python", "app.py"]