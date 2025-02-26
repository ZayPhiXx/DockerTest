# Étape 1 : Compilation dans une image intermédiaire
FROM gcc:latest AS builder
WORKDIR /app

# Copier le code source et le Makefile
COPY Makefile .
COPY src/ src/

# Compiler l'application
RUN make all

# Étape 2 : Image finale plus légère
FROM debian:bookworm-slim
WORKDIR /app

# Copier uniquement l'exécutable depuis l'étape de build
COPY --from=builder /app/calculator .

# Définir le point d’entrée
CMD ["./calculator"]