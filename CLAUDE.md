# CLAUDE.md — Kagi（家族の金庫アプリ）

この案件の目的・決めたことは vault の `10_Projects/Kagi/README.md` が正本。作業前に読む。
文体は vault の `90_AI/文体ナレッジ`、komi の癖は `05_Me` に従う。
vault のフルパス: `~/Library/Mobile Documents/iCloud~md~obsidian/Documents/KomiBrain`

## このリポジトリで守ること
- 開発者は非エンジニア。Claude Code と対話しながら作る。専門用語には一言の言い換えを添える
- 技術: HTML 1ファイル（index.html）だけ。サーバーもライブラリも使わない。暗号化は Web Crypto（PBKDF2 + AES-GCM）
- **本物のパスワード・口座番号は、このリポジトリにも vault にも Claude の会話にも入れない。** テストはダミーの値で行う
- 動作確認は `.claude/launch.json` の dev サーバー（python http.server）で。実運用はファイルを直接開く
- 決めたこと・なぜそうしたかは vault 側の README に書く。このファイルは案内板にとどめる
