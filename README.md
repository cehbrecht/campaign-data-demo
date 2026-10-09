# Campaign data demo

A lightweight project to evaluate **DataLad as an alternative to IPFS** for
research campaign data management.

Proposed architecture: DataLad tracks campaign datasets, subdatasets and provenance;
S3 / MinIO stores large file content; STAC supports discovery; pygeoapi exposes
management and monitoring through OGC API Processes.

**Current status:** documentation, Quarto slides and build/publishing configuration.
DataLad operations, storage services, STAC generation and pygeoapi processes are
planned, not implemented. There is no custom metadata schema.

## Local development

Install Python 3.11+, [uv](https://docs.astral.sh/uv/getting-started/installation/)
and [Quarto](https://quarto.org/docs/get-started/). Then run:

```sh
make install
make docs-serve
```

`make docs` builds the site. `make talks` builds HTML and PDF slides using
DeckTape (Node.js 22+ and `npm install -g decktape@3.16.1`).
`make site` builds both together; `make help` lists all targets.
See the [quickstart](docs/quickstart.md) for setup and GitHub Pages settings.

## Links

- [Documentation](https://cehbrecht.github.io/campaign-data-demo/)
- [HTML slides](https://cehbrecht.github.io/campaign-data-demo/talks/overview.html)
- [PDF slides](https://cehbrecht.github.io/campaign-data-demo/talks/overview.pdf)

Published links become available after the first successful Pages deployment.
