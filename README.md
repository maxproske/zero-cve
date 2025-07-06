# Learn Supply Chain Security

Build pipeline that rebuilds `node:alpine`, fixing all known vulnerabilities so Docker Scout returns 0 Critical/High/Medium/Low. Includes a software bill of materials and SLSA Level 3 provenance.

- [X] Scout
- [X] SLSA Level 1 (BuildKit)
- [X] SLSA Level 2 (OIDC)
- [ ] SLSA Level 3 (SLSA Framework)
- [ ] Obtain perfect Scout health score
- [ ] Bake

## Learnings

- GitHub Actions w/ **BuildKit** is **SLSA 1**. The provenance exists but is **unsigned**, meaning anyone could have faked it.
- GitHub Actions w/ **OIDC** is **SLSA 2**. The provenance is **signed** on a trusted CI, which is good for transparency, but not enough for SLSA 3.
- GitHub Actions w/ **SLSA Framework** is **SLSA 3**. CI is auditably **isolated** to run in a fresh VM.

## Resources

- https://docs.docker.com/dhi/core-concepts/slsa/