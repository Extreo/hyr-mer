# HyrMer – projektspecifika anpassningar

All kod och styling som är unik för **Hyr mer** ska ligga här, inte spridas i Sharetribe-mallens `components/` och `containers/`.

## Struktur

```text
hyrmer/
  README.md           ← denna fil (ändringskarta)
  components/         ← wrappers runt mall-komponenter
  styles/             ← extra CSS (moduler + globala variabler)
  index.js            ← valfria exporter
```

## Vad som redan är anpassat

| Område | Fil | Beskrivning |
|--------|-----|-------------|
| Topbar-logo | `components/HyrMerTopbarLogo.js` | Wrapper runt `LinkedLogo` med HyrMer-stilar |
| Logo-storlek | `styles/topbar.module.css` | Desktop: fast `height`, mobil: `max-height` (krymper vid behov) |
| Design-tokens | `styles/hyrmer.css` | `--hyrmer-logo-height-desktop`, `--hyrmer-logo-height-mobile` |

## Console vs kod

| Inställning | Var |
|-------------|-----|
| Logotyp-filer, färg, logo-höjd 24/36/48 | Sharetribe Console → `branding.json` |
| Finjustering av storlek i topbar | `styles/topbar.module.css` |
| Texter, språk | Console → translations (eller `src/translations/sv.json`) |
| Listningstyper, kategorier | Console (primärt) |

**Tips:** Sätt logo-höjd till **36** eller **48** i Console; justera sedan storlek i `hyrmer.css`:

```css
--hyrmer-logo-height-desktop: 40px;  /* faktisk höjd, bredd auto */
--hyrmer-logo-height-mobile: 36px;   /* max-höjd på mobil */
```

## Lägga till ny anpassning

1. **Enkel CSS-tweak** → ny modul under `styles/`, importera från relevant `container` eller wrapper.
2. **Annorlunda beteende på befintlig komponent** → ny wrapper i `components/` (se `HyrMerTopbarLogo.js`).
3. **Ny sida** → ny container under `src/containers/` + registrera i `routing/routeConfiguration.js`; HyrMer-specifik logik kan ligga i `hyrmer/`.
4. Dokumentera raden i tabellen **Vad som redan är anpassat** ovan.

## Importera från HyrMer

```js
import HyrMerTopbarLogo from '../../hyrmer/components/HyrMerTopbarLogo';
```

Undvik att ändra `src/components/index.js` om det inte är nödvändigt (påverkar CSS-bundle och importordning).