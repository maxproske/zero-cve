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
  output = ["type=registry,provenance=mode=max,sbom=true"]
}
