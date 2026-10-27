# Etapa 1: Compilación
FROM eclipse-temurin:25-jdk-alpine AS build
WORKDIR /app
# Copiamos los archivos de Gradle y el código fuente
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
# Damos permisos y compilamos (esto genera el app.jar)
RUN chmod +x gradlew
RUN ./gradlew bootJar -x test

# Etapa 2: Ejecución
FROM eclipse-temurin:25-jre-alpine
WORKDIR /app
# Copiamos solo el JAR generado en la etapa anterior
COPY --from=build /app/build/libs/app.jar app.jar
# Exponemos el puerto
EXPOSE 8080
# Comando de arranque
ENTRYPOINT ["java", "-jar", "app.jar"]