FROM node:16.15.1-alpine as builder-api
WORKDIR /lacarte-api
COPY package*.json .
COPY tsconfig.json .
RUN npm install --silent
COPY . .
RUN npm run build

FROM node:16.15.1-alpine
WORKDIR /lacarte-api
COPY package*.json .
RUN npm install --only=production --silent
RUN mkdir src
RUN mkdir storage
COPY --from=builder-api /lacarte-api/build ./src
COPY --from=builder-api /lacarte-api/storage ./storage
COPY --from=builder-api /lacarte-api/ormconfig.json .
EXPOSE 3000
CMD ["node", "src/index.js"]