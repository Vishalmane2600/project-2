# =========================
# Stage 1: Build React App
# =========================

FROM node:alpine AS builder

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

# =========================
# Stage 2: Nginx
# =========================

FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
