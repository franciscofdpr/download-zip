#!/bin/bash

# URL do diretório de arquivos
url="https://arquivos.receitafederal.gov.br/dados/cnpj/dados_abertos_cnpj/2024-11/"

# Pasta onde os arquivos serão salvos
diretorio_destino="arquivos_cnpj"

# Cria o diretório de destino, caso não exista
mkdir -p "$diretorio_destino"

# Baixa o conteúdo da página HTML e salva em um arquivo para análise
curl -s "$url" -o pagina.html

# Exibe o conteúdo da página HTML para análise
echo "Conteúdo da página HTML (salvo em pagina.html):"
cat pagina.html

# Filtra os links que terminam com ".zip" e extrai os nomes dos arquivos
grep -oP 'href="\K[^"]+\.zip' pagina.html | \
# Faz o download de cada arquivo encontrado
while read -r arquivo; do
    echo "Baixando: $arquivo"
    curl -s -o "$diretorio_destino/$arquivo" "$url$arquivo"
done

echo "Download completo!"

