# Use uma imagem base que inclui o JDK do Java
FROM openjdk:11

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o código-fonte para o diretório de trabalho
COPY src ./src

# Compile o código-fonte
RUN javac -d bin src/*.java

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["java", "-cp", "bin", "Main"]
