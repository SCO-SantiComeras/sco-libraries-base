FROM node:16-alpine3.18

RUN addgroup backend && adduser -S -G backend backend
USER backend

WORKDIR /app/

COPY --chown=backend package*.json .

RUN npm install

COPY --chown=backend . .

EXPOSE 8000
EXPOSE 8001
CMD ["npm", "run", "start:docker"]