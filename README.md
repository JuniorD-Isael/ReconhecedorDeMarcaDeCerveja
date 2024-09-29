# Projeto Vai Na Web

Este repositório contém duas APIs que compõem o sistema de reconhecimento de marcas de cerveja, implementadas em diferentes tecnologias.

## Estrutura do Projeto


ProjetoVaiNaWeb
├── api1_nest         # API 1 em Nest.js
│   ├── src           # Código-fonte da API 1
│   ├── Dockerfile     # Dockerfile para a API 1
│   ├── package.json   # Dependências da API 1
│   └── ...
└── api2_python       # API 2 em Python (FastAPI)
    ├── app           # Código-fonte da API 2
    ├── Dockerfile     # Dockerfile para a API 2
    ├── pyproject.toml # Dependências da API 2
    └── ...
└── docker-compose.yml # Orquestração das APIs


## Tecnologias Utilizadas

### API 1 - Nest.js

- **Framework**: [Nest.js](https://nestjs.com/)
- **Linguagem**: TypeScript
- **Banco de Dados**: (SQLite3)

### API 2 - Python

- **Framework**: [FastAPI](https://fastapi.tiangolo.com/)
- **Linguagem**: Python
- **OCR**: [Tesseract OCR](https://github.com/tesseract-ocr/tesseract)
- **Gerenciador de Pacotes**: [Poetry](https://python-poetry.org/)

## Arquitetura

- A API 1 (Nest.js) recebe solicitações de upload de imagem e repassa para a API 2.
- A API 2 (Python) processa a imagem usando Tesseract OCR e retorna a marca identificada.

## Como Rodar o Projeto

1. **Clone o Repositório**

   ```bash
   git clone <URL_do_repositório>
   cd ProjetoVaiNaWeb
   ```

2. **Instale o Docker e Docker Compose**

   Certifique-se de que você tenha o [Docker](https://www.docker.com/get-started) e [Docker Compose](https://docs.docker.com/compose/install/) instalados.

3. **Suba as APIs com Docker Compose**

   ```bash
   docker-compose up --build
   ```

4. **Acesse as APIs**

   - API 1: [http://localhost:3000](http://localhost:3000)
   - API 2: [http://localhost:8000](http://localhost:8000)

## Contribuição

Sinta-se à vontade para contribuir! Abra um issue ou um pull request.

## Licença

Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
