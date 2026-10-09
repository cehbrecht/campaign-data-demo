# Campaign data demo

Evaluate **DataLad as an alternative to IPFS** for research campaign data management.

- Organize a campaign into independently versioned datasets.
- Retrieve large files only when needed.
- Discover observations by location and time.
- Record processing provenance and expose management operations through an API.

## Current status

| Available in this repository | Planned for later increments |
| --- | --- |
| MkDocs documentation and Mermaid architecture | DataLad datasets and operations |
| Quarto RevealJS slides and PDF export | S3 / MinIO storage configuration |
| Local builds and GitHub Pages workflow | STAC catalog generation and discovery service |
| Placeholder directories for future work | pygeoapi processes and monitoring |

This repository is a design and publishing foundation. It does not run a campaign
service or define a new metadata schema.

## Explore

- [Architecture](architecture.md): component responsibilities and dataset layout.
- [Quickstart](quickstart.md): build locally and enable publishing.
- [Planned workflows](workflows.md): proposed demonstration and success criteria.
- [IPFS comparison](ipfs-comparison.md): tradeoffs and open questions.
- [Overview slides](talks/overview.html): ten-slide introduction.
