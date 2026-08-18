# ostapondo/homebrew-tap

Homebrew formulae and casks for things I make.

```sh
brew tap ostapondo/tap
brew install --cask wandful
```

| Cask | What |
|---|---|
| [`wandful`](Casks/wandful.rb) | [Wandful](https://github.com/ostapondo/wandful) — a magic wand for your desktop: draw a rune, cast a keyboard shortcut. macOS. |

Wandful is not notarized yet, so macOS asks for a right-click → Open on first
launch, or install with `brew install --cask --no-quarantine wandful`.

The cask is updated by Wandful's release workflow; a hand-made bump PR is fine too.
