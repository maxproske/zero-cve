Rebuilds `node:alpine` patching all known vulnerabilities with SLSA 3 provenance and a surprise inside!

## Roadmap

- [X] Scout CVE gate
- [X] SLSA 1 (BuildKit provenance)
- [X] SLSA 2 (Cosign)
- [X] SLSA 3 (DSSE object)
- [X] Obtain Scout health score "A"
- [X] Nightly rebuild
- [ ] FIPS variant ;)

- **SLSA 1** is GitHub Actions with **BuildKit**. The provenance exists but is **unsigned**, meaning anyone could have faked it.
- **SLSA 2** is GitHub Actions with **OIDC**. The provenance is **signed** on a trusted CI, which is good for transparency, but not enough for SLSA 3.
- **SLSA 3** is GitHub Actions with **SLSA Framework**. CI is auditably ephemeral, **isolated** to run in a fresh VM.
- **SLSA 4** is extremely rare. Two-person review, CI is hermetic and reproducible.

## Resources

- https://docs.docker.com/dhi/core-concepts/slsa/