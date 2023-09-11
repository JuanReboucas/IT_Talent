# Função para realizar a adição
function adicao() {
    resultado=$(expr "$1" + "$2")
    echo "Resultado da adição: $resultado"
}

# Função para realizar a subtração
function subtracao() {
    resultado=$(expr "$1" - "$2")
    echo "Resultado da subtração: $resultado"
}

# Função para realizar a multiplicação
function multiplicacao() {
    resultado=$(expr "$1" \* "$2")
    echo "Resultado da multiplicação: $resultado"
}

# Função para realizar a divisão
function divisao() {
    resultado=$(expr "$1" / "$2")
    echo "Resultado da divisão: $resultado"
}

# Exibir menu
echo "Calculadora Simples"
echo "Escolha uma operação:"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
read -p "Digite o número da operação desejada: " escolha

# Ler os números para a operação
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

# Realizar a operação escolhida
case $escolha in
    1) adicao $num1 $num2 ;;
    2) subtracao $num1 $num2 ;;
    3) multiplicacao $num1 $num2 ;;
    4) divisao $num1 $num2 ;;
    *) echo "Opção inválida"; exit 1 ;;
esac
