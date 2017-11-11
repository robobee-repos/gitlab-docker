FROM  gitlab/gitlab-ce:10.1.2-ce.0
LABEL maintainer "Erwin Mueller <erwin.mueller@deventm.com>"

ADD rootfs/ /

# Finishing up.

RUN set -x \
  && mv /opt/gitlab/embedded/service/gitlab-rails/public /opt/gitlab/embedded/service/gitlab-rails/public.dist \
  && mkdir /opt/gitlab/embedded/service/gitlab-rails/public \
  && chmod +x /*.sh

VOLUME ["/opt/gitlab/embedded/service/gitlab-rails/public"]

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/assets/wrapper"]
