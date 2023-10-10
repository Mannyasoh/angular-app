#!/bin/bash

# Navigate to the Angular app directory
cd angular-app/

# Update Angular app (e.g., pull from the repository, build)
git pull origin main
npm install
ng build --prod

# Copy the Angular build files to the Nginx web root for the Angular app
sudo cp -rf dist/* /var/www/html/dist

# Restart Nginx for Angular changes
sudo systemctl restart nginx
