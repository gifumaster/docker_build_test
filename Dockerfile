FROM alpine:latest
RUN --mount=type=secret,id=SECRET_AUTH_TOKEN

# 必要なツールをインストール
RUN apk update
RUN apk add --no-cache cat

# シークレットを利用するステップ
RUN cat /run/secrets/SECRET_AUTH_TOKEN
