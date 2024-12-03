# Script Bash para Baixar Arquivos ZIP

Este script em Bash é responsável por baixar arquivos `.zip` de um diretório específico na Receita Federal, baseado na URL fornecida. O script acessa uma página HTML contendo os links para os arquivos e faz o download de cada arquivo `.zip` encontrado.

## Requisitos

- Sistema operacional com suporte a Bash (Linux, macOS, WSL no Windows, etc.)
- Ferramenta `curl` instalada para realizar os downloads.
- Permissões adequadas para criação de diretórios e gravação de arquivos.

## Funcionalidade

1. **URL de Origem**: O script começa acessando a URL especificada (`https://arquivos.receitafederal.gov.br/dados/cnpj/dados_abertos_cnpj/2024-11/`), onde os arquivos `.zip` estão listados.
2. **Criação do Diretório de Destino**: Se o diretório onde os arquivos serão salvos (`arquivos_cnpj`) não existir, o script o cria automaticamente.
3. **Download da Página HTML**: O conteúdo da página HTML é baixado e salvo em um arquivo chamado `pagina.html` para posterior análise.
4. **Filtragem de Links**: O script filtra os links presentes na página HTML que terminam com `.zip` e extrai os nomes dos arquivos.
5. **Download dos Arquivos**: Cada arquivo `.zip` encontrado é baixado e salvo no diretório de destino.

## Como Usar

1. Clone ou copie o script em um arquivo com o nome `baixar_cnpj.sh` (ou qualquer outro nome de sua preferência).
2. Dê permissão de execução ao script:

   ```bash
   chmod +x baixar_cnpj.sh
   ```

3. Execute o script:

   ```bash
   ./baixar_cnpj.sh
   ```

4. O script irá criar a pasta `arquivos_cnpj` (se não existir), baixar a página HTML, extrair os links dos arquivos `.zip` e, por fim, baixar os arquivos para o diretório.

## Estrutura de Diretórios

Após a execução do script, a estrutura de diretórios será a seguinte:

```
.
├── baixar_cnpj.sh  # Script que realiza o download
└── arquivos_cnpj    # Diretório onde os arquivos .zip serão armazenados
```

## Exemplo de Saída

Ao rodar o script, você verá uma saída semelhante a esta:

```bash
Conteúdo da página HTML (salvo em pagina.html):
... (conteúdo da página HTML)

Baixando: arquivo1.zip
Baixando: arquivo2.zip
Baixando: arquivo3.zip
Download completo!
```

Os arquivos `.zip` serão salvos no diretório `arquivos_cnpj`.

## Observações

- O script não verifica a integridade dos arquivos baixados.
- Se o diretório de destino já contiver arquivos com o mesmo nome, o script sobrescreverá os arquivos existentes.
- Em caso de falha de conexão ou outros erros de download, o script pode precisar ser reexecutado.

## Contribuição

Este é um script simples e pode ser modificado para atender a necessidades específicas. Se você desejar contribuir ou melhorar o código, sinta-se à vontade para fazer pull requests ou abrir issues.

## Licença

Este script está sob a licença [MIT](https://opensource.org/licenses/MIT).
