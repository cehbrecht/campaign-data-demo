# Planned demonstration workflows

**None of these workflows is implemented yet.** Start with small synthetic files
and add one integration at a time.

| Increment | Demonstration | Success criterion |
| --- | --- | --- |
| 1. Campaign | Create a parent dataset and two instrument subdatasets | A saved parent revision identifies both instrument revisions |
| 2. Storage | Send large file content to S3 / MinIO | A fresh clone retrieves selected files with matching checksums |
| 3. Reproduction | Run a small transformation with DataLad provenance | Recorded inputs, command and outputs support a repeatable run |
| 4. Discovery | Generate standard STAC metadata | Items validate and asset links resolve to the intended revision |
| 5. Operations | Wrap one management function in pygeoapi | A client submits an operation and retrieves its result/status |
| 6. Recovery | Remove a local copy after verifying remote availability | Content can be restored without losing dataset history |

## Evaluation record

- Record tool versions, dataset revisions and file sizes for each run.
- Measure clone, selected retrieval and repeated retrieval separately.
- Check failures: unavailable storage, expired credentials and interrupted jobs.
- Compare the same campaign and access pattern with an IPFS baseline.

Future fixtures belong in `examples/`, reusable helpers in `scripts/`, and
behavioral checks in `tests/`. These directories currently contain no implementation.
