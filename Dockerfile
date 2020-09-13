FROM python:3.8
RUN apt-get update && apt-get install nginx vim -y --no-install-recommends
COPY nginx.default /etc/nginx/sites-available/default
RUN mkdir -p /opt/app
RUN mkdir -p /opt/app/$proy_name
COPY requirements.txt start-server.sh /opt/app/
COPY $proy_name /opt/app/$proy_name/
WORKDIR /opt/app
RUN pip install -r requirements.txt 
RUN chown -R www-data:www-data /opt/app
EXPOSE 32902
STOPSIGNAL SIGTERM
CMD ["/opt/app/start-server.sh"]
