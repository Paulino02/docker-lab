# Use uma imagem base que inclui o JDK do Java
FROM openjdk:11

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o código-fonte para o diretório de trabalho
COPY target/vprofile-v2.war /app/vprofile-v2.war

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["java", "-jar", "vprofile-v2.war"]
