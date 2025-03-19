
# cargo-binstall (cargo-binstall)

Installs a precompiled cargo-binstall version from GitHub releases

## Example Usage

```json
"features": {
    "ghcr.io/pazustep/devcontainer-features/cargo-binstall:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | The cargo-binstall version to install | string | 1.12.1 |

This feature assumes Rust/Cargo were installed using the [feature](https://github.com/devcontainers/features/tree/main/src/rust), but _may_ work in other situations, as long as:

- `rustc` and `cargo` are available on the $PATH;
- `$CARGO_HOME` is correctly set;

Note that this feature does _not_ probe the latest available version for `cargo-binstall`, and instead requires users to set the `version` option.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/pazustep/devcontainer-features/blob/main/src/cargo-binstall/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
