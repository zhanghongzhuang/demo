FROM registrytest.sspaas.net/root/application:B1.0

MAINTAINER xiezihao <18505610220@163.com>

ADD welcome_GearBox /app/welcome_GearBox
ADD scripts /scripts
ADD scripts/supervisord.conf /etc/supervisord.d/
ADD scripts/myapp_uwsgi.ini /app/welcome_GearBox

RUN chmod +x /scripts/run.sh
RUN mkdir -p /app/log

ENV LANG en_US.UTF-8

WORKDIR /app/welcome_GearBox

EXPOSE 8000

ENTRYPOINT ["/scripts/run.sh"]
