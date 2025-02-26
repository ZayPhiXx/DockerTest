# Utilisation d'une image de base générique et lourde
FROM ubuntu:latest

# Mise à jour des paquets et installation de dépendances
RUN apt-get update
RUN apt-get install -y gcc make

# Répertoire de travail dans l'image
WORKDIR /app

# Copie du Makefile et des sources C
COPY Makefile .
COPY src/ src/

# Compilation du programme
RUN make

EXPOSE 8080

# Commande pour exécuter le programme
CMD ["./calculator"]
