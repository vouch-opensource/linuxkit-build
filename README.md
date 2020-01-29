# linuxkit-build
A Github action to enable [LinuxKit](https://github.com/linuxkit/linuxkit) OS image builds

LinuxKit describes itself as:
> A toolkit for building secure, portable and lean operating systems for containers

This action relies on a [Docker image of LinuxKit](https://hub.docker.com/repository/docker/vouchio/linuxkit-docker)

## Inputs

### `config`

**Required** LinuxKit YAML file(s) to build (eg `lxk.yml`). There is no default.

### `format`

**Optional** The format(s) for the output (eg `aws`, `gcp`, `iso-efi`, etc...). 

**Default:** `kernel+initrd`

## Outputs

### `files`

The files that were built

## Example usage - default

```yaml 
# Check the action marketplace for the latest version tag
uses: actions/linuxkit-docker-action@v1.x
with:
  config: lxk-build.yml
```

## Example usage - AWS

```yaml 
# Check the action marketplace for the latest version tag
uses: actions/linuxkit-docker-action@v1.x
with:
  config: lxk-build.yml
  format: aws
```


# License
The scripts and documentation in this project are released under the [MIT License](LICENSE)
