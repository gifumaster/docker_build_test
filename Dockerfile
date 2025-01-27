FROM alpine:latest
RUN --mount=type=secret,id=secret_auth_token,env=SECRET_AUTH_TOKEN


# シークレットを利用するステップ
ARG SECRET_AUTH_TOKEN
RUN echo secret
RUN echo "$SECRET_AUTH_TOKEN"
