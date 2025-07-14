# On part d’une image Nginx
FROM nginx:alpine

# Supprime la page par défaut d’Nginx
RUN rm /usr/share/nginx/html/*

# Copie tout le contenu local dans le dossier HTML d’Nginx
COPY . /usr/share/nginx/html/

# Expose le port 80
EXPOSE 80
