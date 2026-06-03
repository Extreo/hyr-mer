# Git-repo i HyrMer-roten (alternativ B)

Kör stegen när **ingen process** använder `web-template/` (stoppa `yarn run dev`, stäng ev. filutforskare i mappen).

## 1. Byt namn på app-mappen

Rekommenderat namn: **`web`** (kort, standard i monorepos).

```powershell
cd D:\Dev\Repos\HyrMer
Rename-Item -Path web-template -NewName web
```

## 2. Flytta git till repo-roten

```powershell
cd D:\Dev\Repos\HyrMer
Move-Item -Path web\.git -Destination .git
git add -A
git status
```

Git visar filer som flyttats till `web/`. Committa:

```powershell
git config user.email "din@email.se"
git config user.name "Ditt Namn"
git commit -m "Restructure: move marketplace app into web/ for monorepo"
```

## 3. Koppla bort Sharetribe GitHub (origin)

```powershell
git remote remove origin
```

Valfritt för framtida mall-uppdateringar:

```powershell
git remote add upstream https://github.com/sharetribe/web-template.git
```

## 4. Push till ditt GitHub-konto

Skapa ett **nytt tomt repo** (inte Fork). Sedan:

```powershell
git remote add origin https://github.com/DITT-ANVÄNDARNAMN/hyrmer.git
git push -u origin main
```

## Felsökning

- **"filen används av annan process"** vid rename → stoppa dev-server och IDE, försök igen.
- **`.env` ska aldrig committas** – ligger i `web/.gitignore`.