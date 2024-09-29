# Projeto Vai Na Web

Este repositório contém duas APIs que compõem o sistema de reconhecimento de marcas de cerveja, implementadas em diferentes tecnologias.

## Estrutura do Projeto

A estrutura do projeto é organizada da seguinte maneira:

- **ProjetoVaiNaWeb/**
  - **api1_nest/** (Diretório da API 1 - Nest.js)
    - **src/** (Código fonte da API 1)
    - **package.json** (Dependências da API 1)
    - **nest-cli.json** (Configurações do Nest CLI)
    - **tsconfig.json** (Configuração do TypeScript)
    - Outros arquivos e pastas
  - **api2_python/** (Diretório da API 2 - Python)
    - **app/** (Código fonte da API 2)
    - **pyproject.toml** (Dependências da API 2)
    - **poetry.lock** (Lock file do Poetry)
    - Outros arquivos e pastas
  - **docker-compose.yml** (Arquivo de configuração do Docker Compose)


## Tecnologias Utilizadas

### API 1 - Nest.js

- **Repositório dedicado** [aqui](https://github.com/JuniorD-Isael/api1_nest)
- **Framework**: [Nest.js](https://nestjs.com/)
- **Linguagem**: TypeScript
- **Banco de Dados**: (SQLite3)


### API 2 - Python

- **Repositório dedicado** [aqui](https://github.com/JuniorD-Isael/api2_python)
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
   git clone --recurse-submodules https://github.com/JuniorD-Isael/ReconhecedorDeMarcaDeCerveja.git
   cd ReconhecedorDeMarcaDeCerveja
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
