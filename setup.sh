#!/bin/bash
# Script de inicialização do projeto Django Blog

echo "🚀 Inicializando projeto Django Blog..."

# Verificar se o ambiente virtual existe
if [ ! -d "env" ]; then
    echo "📦 Criando ambiente virtual..."
    python -m venv env
fi

# Ativar ambiente virtual
echo "🔧 Ativando ambiente virtual..."
source env/Scripts/activate  # Windows
# source env/bin/activate    # Linux/Mac

# Instalar dependências
echo "📚 Instalando dependências..."
pip install -r requirements.txt

# Executar migrações
echo "🗄️  Executando migrações..."
python manage.py migrate

# Criar superusuário (opcional)
read -p "👤 Deseja criar um superusuário? (y/n): " create_superuser
if [ "$create_superuser" = "y" ]; then
    python manage.py createsuperuser
fi

echo "✅ Projeto inicializado com sucesso!"
echo "🚀 Execute 'python manage.py runserver' para iniciar o servidor"