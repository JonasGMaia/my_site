# Script de inicialização do projeto Django Blog (Windows)
Write-Host "🚀 Inicializando projeto Django Blog..." -ForegroundColor Green

# Verificar se o ambiente virtual existe
if (!(Test-Path "env")) {
    Write-Host "📦 Criando ambiente virtual..." -ForegroundColor Yellow
    python -m venv env
}

# Ativar ambiente virtual
Write-Host "🔧 Ativando ambiente virtual..." -ForegroundColor Yellow
& env\Scripts\activate

# Instalar dependências
Write-Host "📚 Instalando dependências..." -ForegroundColor Yellow
pip install -r requirements.txt

# Executar migrações
Write-Host "🗄️  Executando migrações..." -ForegroundColor Yellow
python manage.py migrate

# Criar superusuário (opcional)
$createSuperuser = Read-Host "👤 Deseja criar um superusuário? (y/n)"
if ($createSuperuser -eq "y") {
    python manage.py createsuperuser
}

Write-Host "✅ Projeto inicializado com sucesso!" -ForegroundColor Green
Write-Host "🚀 Execute 'python manage.py runserver' para iniciar o servidor" -ForegroundColor Cyan