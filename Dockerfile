# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt . 

#Copier FAISS dans l'image
COPY Faiss /home/afdel/Desktop/COURS/L3/ChatBot/exam/Faiss

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port sur lequel l'API va écouter
EXPOSE 8000

# Commande pour lancer l'API
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]