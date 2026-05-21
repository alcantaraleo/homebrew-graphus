# homebrew-graphus

Homebrew tap for the [Graphus](https://github.com/alcantaraleo/graphus) CLI.

## Install

```bash
brew tap alcantaraleo/graphus
brew install alcantaraleo/graphus/graphus
```

Upgrade:

```bash
brew update && brew upgrade alcantaraleo/graphus/graphus
```

## How this tap is managed

**Do not edit this repository by hand.**

The formula (`Formula/graphus.rb`) is managed automatically by the `publish.yml` workflow in
[`alcantaraleo/graphus`](https://github.com/alcantaraleo/graphus). On every GitHub Release:

1. `publish.yml` reads `Formula/graphus.rb` from the main repo (source of truth for formula logic).
2. It substitutes the new release version and `sha256` of `graphus.jar`.
3. It validates Ruby syntax (`ruby -c`).
4. It pushes the rendered formula here.

To change formula logic (install steps, test assertions, dependencies), open a PR against
`alcantaraleo/graphus` — not this repo.
