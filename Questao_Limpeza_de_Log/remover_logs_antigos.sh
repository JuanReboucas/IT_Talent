# Diretório onde os arquivos .log estão localizados
diretorio_logs="/var/log"

find "$diretorio_logs" -name "*.log" -type f -mtime +7 -exec rm {} \;

# Exibe a mensagem de conclusão
echo "Arquivos .log com mais de 7 dias de atividade foram removidos em $diretorio_logs."
