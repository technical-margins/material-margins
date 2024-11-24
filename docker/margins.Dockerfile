# Build stage: use MkDocs to generate HTML files from Markdown
FROM squidfunk/mkdocs-material:9.5.44 AS build
RUN pip install mkdocs-glightbox==0.3.7 mkdocs-static-i18n==1.2.0 mkdocs-macros-plugin==1.0.5

LABEL maintainer="technical-margins <themarginwriter@outlook.com>"\
    stage="build" \
    description="Builds the HTML content using MkDocs, with the Material theme and plugins."

# Copy the website source files to the container
COPY . /docs

# Set the working directory to the docs folder in the container
WORKDIR /docs

# Build the web site in English, French, and Chinese
RUN mkdocs build -f config/fr/mkdocs.yml && \
    mkdocs build -f config/en/mkdocs.yml && \
    mkdocs build -f config/zh/mkdocs.yml

# Make the generated HTML files more efficient by removing spaces
# RUN python ### Script to minify the HTML files to be added here

# Serve stage: use Nginx to serve the generated HTML files
FROM nginx:alpine

LABEL stage="serve" \
    description="Serves the generated HTML content using Nginx."

# Copy the Nginx configuration file to the container
COPY docker/nginx.conf.template /etc/nginx/templates/default.conf.template

# Copy the index.html file to the Nginx directory to serve as the landing page for redirection
COPY docs/index.html /usr/share/nginx/html

# Copy the generated HTML files to the Nginx directory to serve the website
COPY --from=build docs/generated /usr/share/nginx/html

# Expose the port that Nginx listens on
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]