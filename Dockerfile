FROM nginx:1.27-alpine

# Copy static site
COPY index.html /usr/share/nginx/html/index.html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Cloud Run injects PORT env var; nginx listens on it
ENV PORT=8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
