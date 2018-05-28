WordPress on Dockerローカル開発環境。

## 開発時の環境
- `Docker version 18.03.1-ce`
- `WP-CLI version: 1.5.1` ※`brew install wp-cli`
- `mysql` ※`brew install mysql`

## 環境準備手順
0. `docker-compose up -d`
0. `wp-theme/`に開発中のテーマを配置
0. `bin/setup`
0. `http://localhost/`

※初回はDockerファイル転送が完了しない場合がある、restartもしくはdown > upで直る。

## 環境の構造
- `wp-theme/`はテーマファイル。
- `wp-core/`はDocker用WPコアファイル群。
- `logs/`はlogファイル。
- ※DockerVolumeに`wordpress`というDBを作ってるので扱い注意。

## DBデータごと復元する場合
wp-cliの機能でsqlを読み込める。bin/setupで切り替える事。

## FIXME
- db host名の関係でローカルwp-cliが扱えない。
