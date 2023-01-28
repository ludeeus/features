# Home Assistant

Installs Home Assistant Core inside the devcontainer.

## Example Usage

```json
"features": {
    "ghcr.io/ludeeus/features/homeassistant:latest": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Select the version of Home Assistant. | string | stable |



## OS Support

This Feature should work on recent versions of Debian/Ubuntu-based distributions with the `apt` package manager installed.

`bash` is required to execute the `install.sh` script.
