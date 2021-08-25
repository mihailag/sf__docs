FROM python:3-alpine as builder
RUN pip install "pelican[markdown]"
COPY . /pelican
WORKDIR /pelican
RUN pelican content
FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /pelican/output /usr/share/nginx/html