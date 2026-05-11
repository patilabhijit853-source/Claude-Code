# Use lightweight alpine nginx image
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static website files to the nginx html directory
COPY . /usr/share/nginx/html

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
