#!/bin/bash
# Script de verificação de recursos para ambientes Linux

echo "=== DIAGNÓSTICO DO SISTEMA LINUX ==="
echo "Data e Hora: $(date)"
echo "-----------------------------------"

echo "1. Uso de Memória RAM:"
free -h

echo -e "\n2. Uso do Disco:"
df -h /

echo -e "\n3. Teste de Resolução de Nomes (DNS):"
nslookup google.com | grep "Address"
