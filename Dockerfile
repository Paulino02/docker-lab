# Estágio 1: Construindo a aplicação
FROM maven:3.8.4 AS builder

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o código-fonte para o diretório de trabalho
COPY . .

# Executa o comando Maven para construir o pacote da aplicação
RUN mvn package

# Estágio 2: Preparando para a execução
FROM tomcat:latest

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/local/tomcat/webapps/

# Copia o arquivo WAR construído no estágio anterior para o diretório webapps do Tomcat
COPY --from=builder /app/target/vprofile-v2.war .

# Comando para executar a aplicação quando o contêiner for iniciado (não é necessário neste caso, já que o Tomcat iniciará automaticamente a aplicação)
