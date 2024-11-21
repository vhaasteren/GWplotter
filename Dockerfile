# Use a lightweight base image with Nginx
FROM nginx:alpine

# Copy the static website files to the Nginx default serving directory
COPY ./ /usr/share/nginx/html/

# Expose port 80 for the container
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

