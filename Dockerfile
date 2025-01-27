FROM alpine:latest
RUN --mount=type=secret,id=SECRET_AUTH_TOKEN

# シークレットを利用するステップ
RUN echo 1
RUN echo ${SECRET_AUTH_TOKEN}
