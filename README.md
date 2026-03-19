# Django Blog Project

Este é um projeto Django para um blog pessoal simples.

## Configuração do Ambiente

1. **Clone ou baixe o projeto**
2. **Crie um ambiente virtual:**
   ```bash
   python -m venv env
   ```

3. **Ative o ambiente virtual:**
   - Windows: `env\Scripts\activate`
   - Linux/Mac: `source env/bin/activate`

4. **Instale as dependências:**
   ```bash
   pip install -r requirements.txt
   ```

5. **Execute as migrações:**
   ```bash
   python manage.py migrate
   ```

6. **Crie um superusuário (opcional):**
   ```bash
   python manage.py createsuperuser
   ```

7. **Execute o servidor:**
   ```bash
   python manage.py runserver
   ```

## Dependências

- **Django 6.0.3**: Framework web principal
- **factory_boy 3.3.3**: Para criação de objetos de teste
- **Faker 40.11.0**: Para geração de dados falsos
- **pytest 9.0.2**: Framework de testes
- **pytest-django 4.12.0**: Plugin Django para pytest

## Estrutura do Projeto

```
my_site/
├── blog/                 # App do blog
├── config/              # Configurações principais
├── tests/               # Testes
├── requirements.txt     # Dependências
└── manage.py           # Script de gerenciamento Django
```

## Executando Testes

```bash
pytest
```

## Acesso ao Admin

Após criar um superusuário, acesse `/admin` para gerenciar posts.
