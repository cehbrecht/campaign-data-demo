.DEFAULT_GOAL := help
UV ?= uv
QUARTO ?= quarto
DECKTAPE ?= decktape
DECKTAPE_FLAGS ?=

.PHONY: help install docs docs-serve talks talks-html talks-pdf site clean

help:
	@echo "install     Install locked Python documentation dependencies with uv"
	@echo "docs        Build documentation and HTML slides in site/"
	@echo "docs-serve  Serve documentation and HTML slides locally"
	@echo "talks       Build HTML and PDF slides in docs/talks/"
	@echo "talks-html  Build only HTML slides (requires Quarto)"
	@echo "talks-pdf   Export Quarto HTML slides to PDF (requires DeckTape)"
	@echo "site        Build the complete Pages artifact, including PDF"
	@echo "clean       Remove generated documentation and presentations"

install:
	$(UV) sync --locked

talks-html:
	$(QUARTO) render talks --to revealjs

talks-pdf: talks-html
	$(DECKTAPE) reveal --size 1600x900 --load-pause 2000 $(DECKTAPE_FLAGS) docs/talks/overview.html docs/talks/overview.pdf

talks: talks-pdf

docs: talks-html
	$(UV) run --locked mkdocs build --strict

docs-serve: talks-html
	$(UV) run --locked mkdocs serve

site: talks
	$(UV) run --locked mkdocs build --strict

clean:
	rm -rf site docs/talks talks/.quarto talks/overview_files
