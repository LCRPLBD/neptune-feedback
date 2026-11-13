FROM node:24-alpine
WORKDIR /app
COPY package.json server.mjs moderation.mjs cars.json ./
COPY public ./public
ENV NODE_ENV=production
ENV DATA_DIR=/data
EXPOSE 3000
CMD ["node","server.mjs"]
