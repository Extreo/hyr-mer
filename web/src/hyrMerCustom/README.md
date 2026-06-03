# hyrMerCustom – anpassningar ovanpå Sharetribe-mallen

All **projektspecifik** kod (utöver Console-konfiguration) ska ligga här — inte spridas i mallens `components/` och `containers/`.

## Struktur

```text
hyrMerCustom/
  README.md
  components/     ← wrappers runt mall-komponenter
  styles/         ← tokens + CSS-moduler
  index.js        ← valfria exporter
```

## Vad som redan är anpassat

| Område | Fil | Beskrivning |
|--------|-----|-------------|
| Topbar-logo | `components/HyrMerTopbarLogo.js` | Wrapper runt `LinkedLogo` |
| Logo-storlek | `styles/topbar.module.css` | Desktop: fast höjd, mobil: max-höjd |
| Design-tokens | `styles/hyrMerCustom.css` | `--hyrMerCustom-logo-height-*` |

## Console vs kod

| Inställning | Var |
|-------------|-----|
| Logotyp, färg, logo-höjd 24/36/48 | Sharetribe Console |
| Finjustering av logo i topbar | `styles/hyrMerCustom.css` |

## Importera

```js
import HyrMerTopbarLogo from '../../hyrMerCustom/components/HyrMerTopbarLogo';
```

Ändra inte `src/components/index.js` i onödan (påverkar CSS-bundle och importordning).