# uselex-flake
Example flake with a reference to external non-flake git repository.

This repository demonstrates both `flake`-style inputs and raw `git`
repositories. Both can be overridden with `--override-input`.

## How to build

You can build uselex as is right off the git tree:

```
$ nix build github:trofi/uselex-flake#uselex_live --no-write-lock-file
```

Or you can use a specific commit:

```
$ nix build github:trofi/uselex-flake#uselex_live --no-write-lock-file --override-input uselex github:trofi/uselex/fe54bc12013a2a28f1638bdd5faa2f81d4d8fd1c
```
