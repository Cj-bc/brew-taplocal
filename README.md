日本語: [JA_README.md](JA_README.md)

---

# brew taplocal

Taps locally exist formula repository.
_homebrew extension command_


# usage

```bash
$ brew taplocal ~/.ghq/github.com/Cj-bc/homebrew-cj-bc
# equals to
# $ brew tap Cj-bc/cj-bc
# But refs may not be pushed to remote.
```


# difference between this and `brew tap`

- Tap local repository
- Make Symlink to exist repository so that we don't have to have 2 clones

This is useful if you use repository management tool like [motemen/ghq](https://github.com/motemen/ghq).
