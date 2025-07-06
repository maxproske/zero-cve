# Learn Supply Chain Security

Build pipeline that rebuilds `node:alpine`, fixing all known vulnerabilities so Docker Scout returns 0 Critical/High/Medium/Low. Includes a software bill of materials and SLSA Level 3 provenance.

- [X] Scout
- [X] SLSA Level 1 (BuildKit max provenance)
- [X] SLSA Level 2 (OIDC)
- [X] SLSA Level 3 (SLSA DSSE object)
- [X] Obtain Scout health score "A"
- [ ] Bake

## Learnings

- **SBOMs** that show what's in the image
- Build **provenance** that proves how and where the image was built
- **VEX** documents to identify which vulnerabilities are actually exploitable
- **FIPS** variants of hardened images (Chainguard and DHI) use cryptographic modules that have been validated under FIPS 140, a US government standard, to help reach regulatory compliance.

- **SLSA 1** is GitHub Actions with **BuildKit**. The provenance exists but is **unsigned**, meaning anyone could have faked it.
- **SLSA 2** is GitHub Actions with **OIDC**. The provenance is **signed** on a trusted CI, which is good for transparency, but not enough for SLSA 3.
- **SLSA 3** is GitHub Actions with **SLSA Framework**. CI is auditably ephemeral, **isolated** to run in a fresh VM.
- **SLSA 4** is extremely rate. Two-person review, CI is hermetic (whatever that means), and reproducible.

## Resources

- https://docs.docker.com/dhi/core-concepts/slsa/