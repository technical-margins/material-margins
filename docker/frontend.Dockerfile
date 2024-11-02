# Build stage: use MkDocs Material to generate the HTML documentation
FROM squidfunk/mkdocs-material:9.5.38 AS build
RUN pip install mkdocs-glightbox==0.3.7 mkdocs-static-i18n==1.2.0 mkdocs-macros-plugin==1.0.5

LABEL maintainer="li-lon <no-address@live.com>"\
    stage="build" \
    description="Generates HTML from Markdown files using MkDocs with the Material theme."

# Copy project files to the /docs directory in the container
COPY . /docs

# Set the working directory
WORKDIR /docs

# Build the HTML documentation using the appropriate MkDocs configuration file
RUN mkdocs build -f config/fr/mkdocs.yml && \
    mkdocs build -f config/en/mkdocs.yml && \
    mkdocs build -f config/zh/mkdocs.yml

# Minify HTML output by removing extra spaces
# RUN python ./python_scripts/remove_spaces.py

# Serve stage: use Nginx to serve the generated HTML files
FROM nginx:alpine

LABEL stage="serve" \
    description="Serves the HTML content on Nginx, using the Alpine version for efficiency."

# Copy Nginx configuration template for handling caching and URL redirection
COPY docker/nginx.conf.template /etc/nginx/templates/default.conf.template

# Copy the redirection HTML page depending on browser's language
COPY docs/index.html /usr/share/nginx/html

# Copy the generated HTML files from the build stage to the Nginx directory
COPY --from=build docs/generated /usr/share/nginx/html

# Expose port 80 and start Nginx to serve the documentation
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]