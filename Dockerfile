# --------------------------
# 🚀 Dockerfile pour MinIO
# --------------------------

# Utiliser l'image officielle de MinIO
FROM quay.io/minio/minio:latest

# Définir le dossier de travail
WORKDIR /data

# Définir les variables d'environnement
# ⚠️ Modifie ces variables dans Railway (Settings > Variables)
ENV MINIO_ROOT_USER=admin
ENV MINIO_ROOT_PASSWORD=admin123

# Exposer les ports :
# 9000 -> API
# 9001 -> Console Web
EXPOSE 9000
EXPOSE 9001

# Commande de lancement
CMD ["server", "/data", "--console-address", ":9001"]
