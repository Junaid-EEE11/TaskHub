@echo off

:: Install Node.js and npm
msiexec /i https://nodejs.org/dist/v16.13.0/node-v16.13.0-x64.msi /quiet

set projectDirectory=TaskHub

:: Create main project directory
mkdir %projectDirectory%
cd %projectDirectory%

:: Backend setup
mkdir backend
cd backend
npm init -y
npm install express mongoose jsonwebtoken swagger-jsdoc swagger-ui-express stripe
mkdir src
cd src
mkdir controllers models routes config middleware
echo // Backend source files > app.js
echo // Server initialization > server.js
echo // JWT configuration > ../config/jwtConfig.js
echo // Stripe configuration > ../config/stripeConfig.js
echo // Authentication middleware > ../middleware/authMiddleware.js
cd ../../

:: Frontend setup
mkdir frontend
cd frontend
npm init -y
npm install react redux react-redux axios bootstrap
mkdir public src
cd src
mkdir components views store utils
echo // Frontend source files > App.vue
echo // Redux store > store/index.js
echo // Axios API utility > utils/api.js
cd ../../

:: Other project files
echo // Swagger API documentation > swagger.yaml
echo // Dockerfile > Dockerfile
mkdir kubernetes
cd kubernetes
echo // Kubernetes deployment file > deployment.yaml
echo // Kubernetes service file > service.yaml
cd ../

:: GitHub Actions workflow
mkdir .github
cd .github
mkdir workflows
cd workflows
echo // GitHub Actions deploy workflow > deploy.yml
cd ../../../

:: Environment configuration
echo // Environment configuration > .env

:: Git initialization
git init

:: Open the project directory in VS Code (you can replace this with your preferred text editor)
code .

:: End of script
@echo on
