# Dockerfile

# Definindo a imagem base para o serviço da API 1 (Nest.js)
FROM node:18 AS api1_builder
WORKDIR /app/api1_nest
COPY api1_nest/package*.json ./
RUN npm install
COPY api1_nest/ ./
RUN npm run build

# Definindo a imagem base para o serviço da API 2 (Python)
FROM python:3.12-slim AS api2_builder
WORKDIR /app/api2_python
COPY api2_python/pyproject.toml api2_python/poetry.lock* ./
RUN apt-get update && apt-get install -y tesseract-ocr && pip install poetry
RUN poetry install --no-root --no-dev
COPY api2_python/ ./

# Imagem final
FROM node:18 AS final
WORKDIR /app
COPY --from=api1_builder /app/api1_nest/dist ./api1_nest
COPY --from=api2_builder /app/api2_python ./api2_python

# Expondo portas
EXPOSE 3000 8000

# Comando para iniciar as duas APIs
CMD ["sh", "-c", "node api1_nest/main.js & python3 api2_python/main.py"]

