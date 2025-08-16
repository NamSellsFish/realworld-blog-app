FROM node:20.9.0
ENV PORT=3334
ENV NODE_ENV=production
EXPOSE $PORT
COPY /dist /app
WORKDIR /app
SHELL ["/bin/bash", "-c"]
RUN source .env
RUN npm i yarn --force
RUN yarn
CMD node main.js
