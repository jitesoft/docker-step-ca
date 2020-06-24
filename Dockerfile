# syntax = docker/dockerfile:experimental
FROM jitesoft/alpine:latest
ARG VERSION
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/step-ca" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/step-ca/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/step-ca" \
      com.jitesoft.app.step-ca.version="${VERSION}"

ARG TARGETARCH

ENV CONFIGPATH="/home/step/.step/config/ca.json" \
    PWDPATH="/home/step/.step/secrets/password"

RUN --mount=type=bind,source=./bin,target=/tmp/bin \
    cp /tmp/bin/entrypoint.sh /usr/local/bin/entrypoint; \
    cp /tmp/bin/step-ca-${TARGETARCH} /usr/local/bin/step-ca \
 && addgroup -g 1000 -S step \
 && adduser -u 1000 -D -G step step \
 && chown step:step /home/step \
 && chmod +x /usr/local/bin/step-ca \
 && chmod +x /usr/local/bin/entrypoint

USER step
WORKDIR /home/step
STOPSIGNAL SIGTERM
ENTRYPOINT ["entrypoint"]
CMD ["--password-file", "${PWPATH}", "${CONFIGPATH}"]
