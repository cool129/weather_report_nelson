FROM node:18-alpine

WORKDIR /app

# Copy backend files
COPY backend ./backend

# Copy frontend files  
COPY frontend ./frontend

# Install backend dependencies
WORKDIR /app/backend
RUN npm install

# Go back to app root
WORKDIR /app

EXPOSE 3000

CMD ["npm", "--prefix", "backend", "start"]
