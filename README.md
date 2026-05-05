# homebrew-graphus

Homebrew tap for installing the Graphus CLI.

## What this repository provides

- Formula: `Formula/graphus.rb`
- Install source: Graphus release artifact (`graphus.jar`) from [`alcantaraleo/graphus`](https://github.com/alcantaraleo/graphus)
- Runtime dependency: `openjdk@21`

## Install and upgrade

```bash
brew tap alcantaraleo/graphus
brew install alcantaraleo/graphus/graphus
```

Upgrade to the latest formula version:

```bash
brew update
brew upgrade alcantaraleo/graphus/graphus
```

Quick verification:

```bash
graphus --help
```

## Publish model

This tap does not require a separate publish pipeline.

Publishing happens by merging formula changes into `main`:

1. Open and merge a PR into `main` in this repository.
2. Users run `brew update`.
3. Homebrew resolves installs/upgrades from the updated formula in this tap.

## Maintainer checklist for a new Graphus release

1. Update `version` in `Formula/graphus.rb`.
2. Update `sha256` in `Formula/graphus.rb` using the released `graphus.jar`.
3. Validate locally:
   - `brew reinstall --build-from-source ./Formula/graphus.rb` (or `brew install --build-from-source ./Formula/graphus.rb`)
   - `graphus --help` (and/or `graphus --version`)
4. Open PR with test evidence and merge to `main`.
