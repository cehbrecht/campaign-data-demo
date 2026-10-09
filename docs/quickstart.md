# Quickstart

## Prerequisites

- Python 3.11+ and [uv](https://docs.astral.sh/uv/getting-started/installation/).
- [Quarto CLI](https://quarto.org/docs/get-started/), version 1.9.38 used in CI.
- GNU Make or a compatible `make`.
- For PDF export only: Node.js 22+ and [DeckTape](https://github.com/astefanutti/decktape):

```sh
npm install -g decktape@3.16.1
```

DeckTape installs a headless browser. PDF export prints the Quarto RevealJS slides,
retaining their HTML layout; it does not require LaTeX. You can also use Chrome's
[RevealJS print-to-PDF workflow](https://quarto.org/docs/presentations/revealjs/presenting.html#print-to-pdf).

## Build locally

```sh
git clone https://github.com/cehbrecht/campaign-data-demo.git
cd campaign-data-demo
make install
make docs-serve
```

Open the local address printed by MkDocs. For static outputs:

```sh
make docs        # site/, including HTML slides
make talks       # docs/talks/overview.html and overview.pdf
make site        # site/, including both slide formats
make clean       # remove build outputs, retain sources and .venv
```

The documentation links to [HTML slides](talks/overview.html). After `make site`,
the PDF is available at `site/talks/overview.pdf` and at the published
[PDF URL](https://cehbrecht.github.io/campaign-data-demo/talks/overview.pdf).

Edit pages in `docs/` and slides in `talks/overview.qmd`. Re-run `make talks-html`
after editing slides during a MkDocs preview. `docs/talks/` is generated and ignored.
The only presentation content committed is the `.qmd` source, alongside Quarto configuration.

Python dependencies are locked in `uv.lock`; builds use `--locked`. To deliberately
update them, run `uv lock --upgrade`, rebuild and review the lockfile diff. Quarto
and DeckTape are external CLI tools, not Python runtime dependencies.

## GitHub Pages setup

1. In repository **Settings → Pages → Build and deployment**, select **GitHub Actions**.
2. Allow GitHub Actions and the actions referenced by `.github/workflows/docs.yml`.
3. Allow the `github-pages` environment to deploy from `main`; satisfy any required
   environment approvals.
4. Push or merge the setup to `main`. The workflow builds and uploads one Pages
   artifact, then deploys it using `actions/deploy-pages`.

Pull requests build HTML, PDF and documentation but do not deploy. The deploy job
alone receives `pages: write` and `id-token: write`. No PAT or `gh-pages` branch is
needed. See [GitHub's custom Pages workflow documentation](https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages).

Expected URL: [campaign-data-demo](https://cehbrecht.github.io/campaign-data-demo/).
Deployment is configured here but becomes live only after repository settings and
the first successful run. Forks should update `site_url`, `repo_url` and published links.
