# Git-repo i HyrMer-roten (alternativ B)

Omstruktureringen är genomförd: git ligger i **HyrMer-roten**, appen i **`web/`**, Sharetribe-`origin` är borttagen.

## Rensa gammal mapp (när inget låser filer)

`web-template/` är en kopia kvar efter flytt (mappen kunde inte döpas om medan den var låst). Ta bort den när dev-server/IDE är stängd:

```powershell
cd D:\Dev\Repos\HyrMer
Remove-Item -Recurse -Force web-template
```

`node_modules` kopierades inte till `web/` – kör antingen `yarn install` i `web/` eller flytta `web-template\node_modules` till `web\node_modules` innan du raderar.

## Push till ditt GitHub-konto

Skapa ett **nytt tomt repo** (inte Fork). Sedan:

```powershell
git remote add origin https://github.com/Extreo/hyr-mer.git
git push -u origin main
```

Om `origin` redan finns med gammalt användarnamn:

```powershell
git remote set-url origin https://github.com/Extreo/hyr-mer.git
```

## Felsökning

- **"filen används av annan process"** vid rename → stoppa dev-server och IDE, försök igen.
- **`.env` ska aldrig committas** – ligger i `web/.gitignore`.