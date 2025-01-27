FROM alpine:latest
RUN --mount=type=secret,id=secret_auth_token,env=SECRET_AUTH_TOKEN

# シークレットを利用するステップ
RUN echo secret
RUN echo "$SECRET_AUTH_TOKEN"

RUN echo public
RUN echo "$PUBLIC_AUTH_TOKEN"
