FROM node:18-alpine
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json", "./" ]
RUN npm install --${NODE_ENV}
COPY . . 
EXPOSE 5000
CMD ["node","server.js"]
