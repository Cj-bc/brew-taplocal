# brew taplocal

ローカル環境にあるレポジトリをtapするコマンドです。
_homebreの拡張コマンド_


# usage

```bash
$ brew taplocal ~/.ghq/github.com/Cj-bc/homebrew-cj-bc
# これはrefsがリモートへプッシュされている必要がないことを除けば
# 以下と同様です:
# $ brew tap Cj-bc/cj-bc
```

# `brew tap`との違い

- ローカルにあるレポジトリをtapできる
- ローカルにあるレポジトリにシンボリックリンクを貼るため、二つのcloneを持つ必要がない

これは、[motemen/ghq](https://github.com/motemen/ghq)などのレポジトリ管理ツールを使っている場合に便利です。
