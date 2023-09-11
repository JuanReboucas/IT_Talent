# Criar 10 diretórios
for ((i = 1; i <= 10; i++)); do
    nome_diretorio="diretorio_$i"

    # Verifica se o diretório já existe
    if [ -d "$nome_diretorio" ]; then
        echo "O diretório $nome_diretorio já existe."
    else
        # Cria o diretório
        mkdir "$nome_diretorio"
        echo "Diretório $nome_diretorio criado com sucesso."
    fi
done
