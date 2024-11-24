FROM squidfunk/mkdocs-material:9.5.44

RUN pip install mkdocs-glightbox==0.3.7 mkdocs-static-i18n==1.2.0 mkdocs-macros-plugin==1.0.5

RUN git config --global --add safe.directory /github/workspace

EXPOSE 8000

ENTRYPOINT ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000" ]

CMD ["--config-file=config/en/mkdocs.yml"]