#!/bin/bash

echo "📦 Cloning Draco Panel..."
git clone https://github.com/DracoPanel/Panel.git temp && \
cp -r temp/* . && \
rm -rf temp

echo "⚙️ Installing dependencies..."
docker compose build
docker compose up -d

echo "⌛ Waiting for MySQL to be ready..."
sleep 15

echo "📂 Copying .env file..."
cp .env.example .env

echo "🔑 Generating app key..."
docker compose exec panel php artisan key:generate

echo "🧬 Running migrations..."
docker compose exec panel php artisan migrate --seed --force

echo "✅ Draco Panel is running at http://localhost:8080"
