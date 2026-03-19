# Django Blog Project

Este é um projeto Django para um blog pessoal simples.

## 🚀 Inicialização Rápida

### Windows (PowerShell)
```powershell
.\setup.ps1
```

### Linux/Mac (Bash)
```bash
chmod +x setup.sh
./setup.sh
```

## Configuração Manual do Ambiente

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

## 📁 Estrutura do Projeto

```
my_site/
├── blog/                    # App do blog
│   ├── migrations/         # Migrações do banco
│   ├── models/            # Modelos (Post)
│   ├── views/             # Views e URLs
│   ├── factories.py       # Factories para testes
│   ├── admin.py          # Configuração do admin
│   └── apps.py           # Configuração do app
├── config/                # Configurações principais
│   ├── settings.py       # Settings do Django
│   ├── urls.py          # URLs principais
│   ├── wsgi.py          # Configuração WSGI
│   └── asgi.py          # Configuração ASGI
├── templates/            # Templates HTML
│   ├── base.html        # Template base
│   └── blog/           # Templates do blog
├── tests/               # Testes organizados
│   ├── models/         # Testes de modelos
│   └── views/          # Testes de views
├── .env.example        # Exemplo de variáveis de ambiente
├── .gitignore         # Arquivos ignorados pelo Git
├── requirements.txt   # Dependências Python
├── setup.ps1         # Script de setup (Windows)
├── setup.sh          # Script de setup (Linux/Mac)
├── pytest.ini        # Configuração do pytest
├── manage.py         # Script de gerenciamento Django
└── README.md         # Este arquivo
```

## 🧪 Executando Testes

```bash
# Todos os testes
pytest

# Testes específicos
pytest tests/models/
pytest tests/views/

# Com cobertura
pytest --cov=blog
```

## 📊 Dependências

- **Django 6.0.3**: Framework web principal
- **factory_boy 3.3.3**: Para factories de teste
- **Faker 40.11.0**: Para geração de dados falsos
- **pytest 9.0.2**: Framework de testes
- **pytest-django 4.12.0**: Integração pytest + Django

## 🔧 Desenvolvimento

### Comandos Úteis

```bash
# Criar migrações
python manage.py makemigrations

# Aplicar migrações
python manage.py migrate

# Criar superusuário
python manage.py createsuperuser

# Executar servidor
python manage.py runserver

# Executar shell do Django
python manage.py shell

# Verificar configurações
python manage.py check
```

### Admin Django

Após criar um superusuário, acesse `/admin` para gerenciar:
- Posts do blog
- Usuários e grupos
- Configurações do sistema

## 🚀 Deploy

Para deploy em produção:

1. Configure as variáveis de ambiente (veja `.env.example`)
2. Defina `DEBUG = False` em `settings.py`
3. Configure um servidor web (nginx, Apache)
4. Use um banco de dados apropriado (PostgreSQL, MySQL)
5. Configure variáveis de ambiente para segurança

## 📝 Contribuição

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.</content>
<parameter name="filePath">c:\Users\jonas\OneDrive\Documentos\django_project1\my_site\README.md
