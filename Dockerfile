FROM ghcr.io/crimsongiteaactions/gha-minio-upload:nightly

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]