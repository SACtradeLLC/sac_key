# sac_key

家族2人用のパスワード・口座・カード管理。HTML 1ファイルで動き、中身はパスワードから作った鍵で暗号化（PBKDF2 + AES-GCM）。

- 本体: `index.html`
- クラウド同期（任意）: `config.js` に Supabase の Project URL と anon キーを入れる。テーブルは `supabase.sql`
- データはこのリポジトリには入っていない（暗号化した状態で Supabase / iCloud Drive / ブラウザ内に保存）
