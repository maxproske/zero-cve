group "default" {
  targets = ["node-alpine-hardened"]
}

target "node-alpine-hardened" {
  context = "."
  dockerfile = "Dockerfile"
  tags = [
    "docker.io/proskemax/node-alpine-hardened:latest"
  ]
  platforms = ["linux/amd64", "linux/arm64"]

  # `bake --push` is shorthand for `--set=*.output=type=registry`
  output = ["type=registry"]

  # `bake --sbom` is shorthand for `--set=*.attest=type=sbom`
  # `bake --provenance` is shorthand for `--set=*.attest=type=provenance`
  attest = [
    "type=provenance,mode=max",
    "type=sbom"
  ]
}
