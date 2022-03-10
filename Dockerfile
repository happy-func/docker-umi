FROM node:14-slim as UI_BUILDER
RUN npm config set registry https://registry.npmmirror.com

ARG BUILD_ENV=prod
WORKDIR /data/customer
COPY package.json yarn.lock ./
RUN yarn
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=UI_BUILDER /data/customer/dist /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT nginx -g "daemon off;"
