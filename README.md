# ynui/tap

Personal Homebrew tap.

```sh
brew install ynui/tap/autoclicker
brew install ynui/tap/home-assistant-cli   # also links as `has`
brew install ynui/tap/calendar-cli
```

`home-assistant-cli` installs a `has` alias. That name collides with an
unrelated formula in homebrew-core; if you already have that one, `brew unlink
has` before installing.