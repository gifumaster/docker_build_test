FROM alpine:latest
RUN --mount=type=secret,id=SECRET_AUTH_TOKEN

# シークレットを利用するステップ
RUN cat SECRET_AUTH_TOKEN
