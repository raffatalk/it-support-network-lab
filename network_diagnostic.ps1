# Script de Troubleshooting e Diagnóstico Rápido de Rede para Windows

Write-Host "--- DIAGNÓSTICO RÁPIDO DE REDE E SISTEMA ---" -ForegroundColor Cyan

# 1. Verificação de IP e Interface
Write-Host "`n[1/3] Obtendo configurações de IP..." -ForegroundColor Yellow
Get-NetIPAddress -AddressFamily IPv4 | Select-Object InterfaceAlias, IPAddress

# 2. Teste de Conectividade Externa (Ping)
Write-Host "`n[2/3] Testando conectividade com a Internet (8.8.8.8)..." -ForegroundColor Yellow
if (Test-Connection -ComputerName 8.8.8.8 -Count 2 -Quiet) {
    Write-Host "Conexão com a Internet: OK" -ForegroundColor Green
} else {
    Write-Host "Falha na conexão com a Internet." -ForegroundColor Red
}

# 3. Limpeza do Cache de DNS
Write-Host "`n[3/3] Limpando cache DNS..." -ForegroundColor Yellow
Clear-DnsClientCache
Write-Host "Cache DNS limpo com sucesso." -ForegroundColor Green
