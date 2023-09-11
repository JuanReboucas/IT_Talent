# Gerar senha aleatória
gerar_senha() {
    local tamanho=$1
    local senha=""
    local caracteres="!@#$%¨&*()abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    # Gere o número especificado de caracteres aleatórios
    for ((i = 0; i < tamanho; i++)); do
        byte=$(od -An -N1 -i /dev/urandom)
        indice=$((byte % ${#caracteres}))
        senha="${senha}${caracteres:indice:1}"
    done

    echo "$senha"
}

# Solicitar o tamanho da senha
read -p "Digite o tamanho da senha desejada: " tamanho_senha

# Verifique se o tamanho especificado é um número válido
if [[ ! $tamanho_senha =~ ^[0-9]+$ ]]; then
    echo "Tamanho inválido. Por favor, insira um número."
    exit 1
fi

# Chame a função para gerar a senha
senha_gerada=$(gerar_senha "$tamanho_senha")

# Exiba a senha gerada
echo "Senha gerada: $senha_gerada"
