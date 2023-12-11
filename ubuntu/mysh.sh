#!/bin/bash

# Create main project directory
mkdir TaskHub
cd TaskHub
sudo apt update
sudo apt install nodejs npm

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Backend setup
mkdir backend
cd backend
npm init -y
npm install express mongoose jsonwebtoken stripe
mkdir src
cd src
mkdir controllers models routes config middleware
touch controllers/taskController.js models/taskModel.js routes/taskRoutes.js config/jwtConfig.js config/stripeConfig.js middleware/authMiddleware.js app.js server.js
cd ../..

# Frontend setup
mkdir frontend
cd frontend
npm init -y
npm install react redux react-redux axios bootstrap
mkdir public src
cd src
mkdir components views store utils
touch components/TaskList.vue components/TaskItem.vue views/Dashboard.vue App.vue store/index.js utils/api.js main.js
cd ../..

# General files
touch .gitignore README.md package.json package-lock.json
touch swagger.yaml Dockerfile
mkdir kubernetes
cd kubernetes
touch deployment.yaml service.yaml
cd ..

# GitHub Actions workflow
mkdir .github
cd .github
mkdir workflows
cd workflows
touch deploy.yml
cd ../../..

# Environment configuration
touch .env

# Deactivate virtual environment
deactivate

# Display completion message
echo "Project structure and files created successfully!"

