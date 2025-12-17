FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production
COPY --from=builder /app ./
RUN mkdir -p /app/public/uploads && chmod -R 755 /app/public
EXPOSE 1337
CMD ["npm", "run", "start"]
