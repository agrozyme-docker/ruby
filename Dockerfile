FROM agrozyme/alpine:3.8

RUN set -euxo pipefail \
  && apk add --no-cache $(apk search --no-cache -xq ruby* | grep -Ev "(\-full|\-pygments|\-dev|\-doc)$" | sort)

CMD ["irb"]
