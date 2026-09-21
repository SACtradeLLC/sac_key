-- sac_key 用のテーブルと権限。Supabase の SQL Editor に貼って Run する（1回だけ）
create table if not exists public.vault (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);
create table if not exists public.vault_members (
  email text primary key
);
-- ↓ ここだけ自分たちのメールに書き換える
insert into public.vault_members (email) values
  ('komi@example.com'),
  ('eri@example.com')
on conflict do nothing;

alter table public.vault enable row level security;
alter table public.vault_members enable row level security;

create policy "members can read" on public.vault
  for select to authenticated
  using ((auth.jwt() ->> 'email') in (select email from public.vault_members));
create policy "members can insert" on public.vault
  for insert to authenticated
  with check ((auth.jwt() ->> 'email') in (select email from public.vault_members));
create policy "members can update" on public.vault
  for update to authenticated
  using ((auth.jwt() ->> 'email') in (select email from public.vault_members))
  with check ((auth.jwt() ->> 'email') in (select email from public.vault_members));
