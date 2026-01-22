FROM nginx:alpine

# Copy your index.html file to the Nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
