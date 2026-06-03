# HyrMer

Marknadsplatsen **Hyr mer** – monorepo för webb, framtida tjänster och dokumentation.

## Struktur

```text
HyrMer/
  README.md           ← detta repo
  web/                ← Sharetribe-baserad marknadsplats (React + Express SSR)
  docs/               ← projektdokumentation (valfritt)
  web-template.zip    ← arkiv, ingår inte i git
```

## Kom igång (webbappen)

```powershell
cd web
yarn install
yarn run config    # första gången, om .env saknas
yarn run dev
```

Öppna http://localhost:3000

## HyrMer-specifik kod

Se `web/src/hyrmer/README.md`.

## Git / GitHub

Se `docs/REPO_SETUP.md` för flytt till repo-root och koppling till eget GitHub-konto.