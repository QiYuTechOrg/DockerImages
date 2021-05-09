FROM quay.io/ansible/awx:19.1.0

USER root
RUN openssl rand -hex 32 > /etc/tower/SECRET_KEY
# RUN echo "19.1.0" > /var/lib/awx/.tower_version
COPY settings.py /etc/tower/settings.py
COPY supervisord.conf /etc/supervisord.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
