FROM agrozyme/alpine:3.8

RUN set -euxo pipefail \
  && apk add --no-cache $(apk search --no-cache -xq ruby* | grep -Ev "(\-full|\-pygments|\-dev|\-doc)$" | sort) \
  && rm -rf /usr/lib/ruby/gems/*/cache/*.gem

CMD ["irb"]
