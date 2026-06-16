# ------------------------------------------------------------
# Base image: Nginx on Alpine Linux (small + battle-tested)
# ------------------------------------------------------------
FROM nginx:alpine

# ------------------------------------------------------------
# Static site files
# ------------------------------------------------------------
# Nginx serves files from /usr/share/nginx/html by default.
# We copy your static assets directly into that directory.
WORKDIR /usr/share/nginx/html

# Build-time asset version. Defaults to "dev" for ad-hoc local builds; the
# Makefile passes the .version value so cache-busting tracks each release.
ARG CSS_VERSION=dev

# Copy the static site files into the default nginx document root.
COPY index.html .
COPY styles.css .
COPY theme.js .
COPY images ./images

# Cache-bust CSS/JS: append the build version as a query string so browsers
# and the CDN fetch fresh assets after every deploy instead of stale copies.
RUN sed -i "s|href=\"styles.css\"|href=\"styles.css?v=${CSS_VERSION}\"|; s|src=\"theme.js\"|src=\"theme.js?v=${CSS_VERSION}\"|" index.html

# ------------------------------------------------------------
# Networking
# ------------------------------------------------------------
# Nginx listens on port 80 in the container.
EXPOSE 80

# Use the default nginx startup command provided by the image.
# (No override needed; this is here just for clarity.)
CMD ["nginx", "-g", "daemon off;"]

