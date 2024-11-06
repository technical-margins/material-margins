FROM squidfunk/mkdocs-material:9.5.38

RUN pip install mkdocs-glightbox mkdocs-macros-plugin

RUN git config --global --add safe.directory /github/workspace

EXPOSE 8000

ENTRYPOINT ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000" ]

CMD ["--config-file=config/en/mkdocs.yml"]