cosign verify-attestation \
  --type slsaprovenance \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  --certificate-identity-regexp 'https://github.com/.+/.+/.+/.+' \
  docker.io/proskemax/node-alpine-hardened:latest

# slsa-verifier verify-image \
#   docker.io/proskemax/node-alpine-hardened@$(crane digest docker.io/proskemax/node-alpine-hardened:latest) \
#   --builder-id  https://github.com/slsa-framework/slsa-github-generator/.github/workflows/generator_container_slsa3.yml@v2.1.0 \
#   --source-uri  github.com/maxproske/zero-cve

# cosign download attestation docker.io/proskemax/node-alpine-hardened@$DIGEST \
#   | jq -r '.payload' | base64 -d | jq '.predicateType'

# cosign tree docker.io/proskemax/node-alpine-hardened:latest