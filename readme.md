# 🐳 Python Docker Optimization (Pet Project)

This project was created to demonstrate web application containerization skills and Docker image optimization using **Multi-stage builds**.

## 🎯 Project Goal
To show the difference between a standard approach to building Docker images and an optimized one. 
By using multi-stage builds, the final image size was reduced by **almost 8 times (from ~1.6 GB to ~201 MB)**. This significantly speeds up deployment, saves disk space, and reduces the attack surface (Security best practices).

## 🛠 Technologies
* **Python 3.9**
* **Flask** (as a lightweight web framework)
* **Docker** (Multi-stage build, `python:3.9-slim`)

## 🚀 How to run locally

**1. Clone the repository:**
```bash
git clone https://github.com/relationm/python-docker-msoptimization.git
cd python-docker-msoptimization
```

2. Build the optimized Docker image:
```bash
docker build -t my-python-app:slim .
```

3. Run the container:
```bash
docker run -d -p 5000:5000 --name running-app my-python-app:slim
```

4. Open your browser and go to: http://localhost:5000

## 📊 Optimization Results
* 🛑 Fat Image (python:3.9): ~ 1.6 GB
* ✅ Slim Image (Multi-stage + python:3.9-slim): ~ 201 MB