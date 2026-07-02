-- The Fable Compass: traveler's log
-- Paste into Supabase SQL Editor (Dashboard -> SQL Editor -> New query) and run once.

create table public.bearings (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  code text not null check (char_length(code) = 4),
  rein smallint, edge smallint, prize smallint, gaze smallint,
  token text, reason text
);

alter table public.bearings enable row level security;

-- visitors may add a bearing, but never read, edit, or delete the raw log
create policy "anyone can take a bearing"
  on public.bearings for insert to anon
  with check (char_length(code) = 4);

-- the public sees only aggregate counts
create view public.bearing_counts as
  select code, count(*)::int as n
  from public.bearings
  group by code;

grant select on public.bearing_counts to anon;
