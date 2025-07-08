FROM node:alpine

# Fix 1 Medium
RUN apk update && apk upgrade --no-cache

# Remove package manager from runtime version
RUN rm -rf /var/cache/apk/*

# Default to non-root user
USER node
