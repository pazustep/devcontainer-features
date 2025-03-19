This feature assumes Rust/Cargo were installed using the [feature](https://github.com/devcontainers/features/tree/main/src/rust), but _may_ work in other situations, as long as:

- `rustc` and `cargo` are available on the $PATH;
- `$CARGO_HOME` is correctly set;

Note that this feature does _not_ probe the latest available version for `cargo-binstall`, and instead requires users to set the `version` option.
