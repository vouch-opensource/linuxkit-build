# linuxkit-build
A Github action to enable LinuxKit OS image builds

## Inputs

### `config`

**Required** LinuxKit YAML configuration to build (eg lxk-build.yml). There is no default.

### `format`

**Optional** The format for the output (eg `aws`, `gcp`, `iso-efi`, etc...). 

**Default** `kernel+initrd`

## Outputs

### `files`

The files that were built

## Example usage - default

```yaml 
uses: actions/linuxkit-docker-action@v1
with:
  config: lxk-build.yml
```

## Example usage - AWS

```yaml 
uses: actions/linuxkit-docker-action@v1
with:
  config: lxk-build.yml
  format: aws
```


# License
The scripts and documentation in this project are released under the [MIT License](LICENSE)
