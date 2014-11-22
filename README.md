# ldap_toolkit

LDAP認証を使ったWebアプリケーションを開発するためのメモとツールです。

## homebrew_openldap

開発環境として、MacのローカルにOpenLDAPを立てます。

```
ruby homebrew_openldap.rb
```

### やること

* `homebrew` で `OpenLDAP` をインストール
* `/usr/local/libexec` と `slapd` へのsymlinkを作成
* `slapadd` で初期データを生成

### 作業メモ

* http://qiita.com/kwappa/items/699ffca1e52c095180f4
