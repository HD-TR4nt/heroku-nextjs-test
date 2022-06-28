FROM node:14 
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npx next build
EXPOSE 8080
CMD ["npx" , "next", "start", "-p", "8080"]