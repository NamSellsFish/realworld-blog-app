#!/usr/bin/env bash

source .env

echo "Logging into dockerhub..."
echo "$DOCKERHUB_PWD" | docker login  --username mrnsf0604 --password-stdin

echo "Deploying feature-article..."
docker tag feature-article mrnsf0604/realworld-app-feature-article:"$DEPLOY_TAG"
docker push mrnsf0604/realworld-app-feature-article:"$DEPLOY_TAG"

echo "Deploying feature-profile..."
docker tag feature-profile mrnsf0604/realworld-app-feature-profile:"$DEPLOY_TAG"
docker push mrnsf0604/realworld-app-feature-profile:"$DEPLOY_TAG"

echo "Deploying feature-tag..."
docker tag feature-tag mrnsf0604/realworld-app-feature-tag:"$DEPLOY_TAG"
docker push mrnsf0604/realworld-app-feature-tag:"$DEPLOY_TAG"

echo "Deploying feature-user..."
docker tag feature-user mrnsf0604/realworld-app-feature-user:"$DEPLOY_TAG"
docker push mrnsf0604/realworld-app-feature-user:"$DEPLOY_TAG"

echo "Deploying gql-gateway..."
docker tag gql-gateway mrnsf0604/realworld-app-gql-gateway:"$DEPLOY_TAG"
docker push mrnsf0604/realworld-app-gql-gateway:"$DEPLOY_TAG"
