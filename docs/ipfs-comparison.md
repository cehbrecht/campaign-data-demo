# DataLad versus IPFS

**An evaluation plan, not a benchmark result.** Both approaches need an explicit
availability and access-control strategy.

| Question | DataLad with git-annex | IPFS |
| --- | --- | --- |
| How is a campaign revision represented? | Git commits and recorded subdataset revisions | Content identifiers (CIDs), with campaign history and naming designed separately |
| How is content fetched? | On demand from configured remotes, such as S3 | By CID from available providers |
| What preserves availability? | Retained copies in managed remotes | Nodes or services retaining/pinning content |
| How is processing recorded? | DataLad run records support provenance | A separate provenance convention or tool is needed |
| How are observations discovered? | Proposed STAC layer | A discovery layer is also needed |

DataLad integrates with Git-based research workflows and managed storage.
IPFS offers content-addressed distribution across peers. Neither choice by itself
settles authorization, scientific metadata or long-term preservation.

## Open questions

- How much administration does each approach require for a private campaign?
- What happens when files, credentials or storage locations change?
- How should STAC assets identify immutable revisions and support authenticated access?
- How large can the campaign/subdataset hierarchy grow before common operations slow down?
- What additional environment capture is needed to reproduce computations?
- Can another institute recover a campaign using only documented procedures?

References: [DataLad](https://docs.datalad.org/en/stable/),
[git-annex S3](https://git-annex.branchable.com/special_remotes/S3/),
[IPFS persistence and pinning](https://docs.ipfs.tech/concepts/persistence/).
