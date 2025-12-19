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

# Copy your site files into the default nginx document root.
# Ensure these filenames match what's on disk:
#   - index.html   (the HTML you pasted)
#   - styles.css   (the CSS you pasted)
#   - theme.js     (the JS you pasted)
COPY index.html .
COPY styles.css .
COPY theme.js .

# ------------------------------------------------------------
# Networking
# ------------------------------------------------------------
# Nginx listens on port 80 in the container.
EXPOSE 80

# Use the default nginx startup command provided by the image.
# (No override needed; this is here just for clarity.)
CMD ["nginx", "-g", "daemon off;"]

