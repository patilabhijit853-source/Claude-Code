# Use lightweight alpine nginx image
FROM nginx:alpine

# Copy static assets (these would be the user's portfolio files)
COPY ./app /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
