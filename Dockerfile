FROM node:22-alpine
WORKDIR  /app
COPY package.json package-lock.json ./
RUN  npm ci --only=production --ignore-scripts
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["node", "dist/main.js"]