# Verifica se o usuário forneceu o nome do arquivo como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <arquivo_de_texto>"
    exit 1
fi

# Armazena o nome do arquivo fornecido pelo usuário
arquivo="$1"

# Verifica se o arquivo existe
if [ ! -e "$arquivo" ]; then
    echo "O arquivo $arquivo não existe."
    exit 1
fi

# Usa o comando wc para contar as palavras no arquivo
num_palavras=$(wc -w < "$arquivo")

# Exibe o resultado
echo "O arquivo $arquivo contém $num_palavras palavras."
