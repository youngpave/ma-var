FROM node:18
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 1935 7860
CMD ["node", "index.js"]
