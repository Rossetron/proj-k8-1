# Stage 1: Build the application
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json./
RUN npm install
COPY..

# Stage 2: Create the final, lean image
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app.
EXPOSE 3000
CMD ["npm", "start"]
