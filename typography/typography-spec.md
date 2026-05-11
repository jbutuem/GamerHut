# Tipografia · GAMER HUT

> 4 famílias · 12 níveis hierárquicos · todas via Google Fonts (gratuitas, web-safe).

---

## Famílias oficiais

### 1. Russo One — DISPLAY
- **Função:** Headlines, capas, manchetes, drops
- **Pesos disponíveis:** 400 (regular único)
- **Uso:** Sempre **CAIXA ALTA**
- **Letter-spacing:** `-0.01em` (peso visual)
- **Substituição open-source:** Substitui a fonte original "Ichiji ONE-ONE" do manual de identidade
- **Fallback:** `Impact, sans-serif`
- **Google Fonts:** `https://fonts.google.com/specimen/Russo+One`

### 2. Red Hat Display — BODY
- **Função:** Corpo de texto, descrições, parágrafos, leitura longa
- **Pesos:** 300, 400, 500, 700, 800, 900 (+ italics)
- **Letter-spacing:** `0` (default)
- **Fallback:** `system-ui, sans-serif`
- **Google Fonts:** `https://fonts.google.com/specimen/Red+Hat+Display`

### 3. Press Start 2P — ARCADE
- **Função:** Tags, eyebrows, badges, navegação retrô
- **Pesos:** 400 (único)
- **Uso:** **NUNCA em corpo de texto** — quebra leitura
- **Letter-spacing:** `0.22em` (super espaçado, vibe arcade)
- **Tamanho recomendado:** 8-12px (legível em pequeno)
- **Fallback:** `monospace`
- **Google Fonts:** `https://fonts.google.com/specimen/Press+Start+2P`

### 4. JetBrains Mono — TÉCNICA
- **Função:** Specs, EANs, códigos de barras, números de versão
- **Pesos:** 300, 400, 500, 700
- **Letter-spacing:** `0.04em`
- **Fallback:** `monospace`
- **Google Fonts:** `https://fonts.google.com/specimen/JetBrains+Mono`

---

## Type Scale completa

| Token | Tamanho / LH | Família | Uso |
|-------|-------------|---------|-----|
| `display` | 96 / 96 px | Russo One | Hero ("MÍDIA FÍSICA NEVER DIES") |
| `h1` | 72 / 80 px | Russo One | Stage titles, headlines principais |
| `h2` | 56 / 64 px | Russo One | Section headers |
| `h3` | 40 / 48 px | Russo One | Subsection headers |
| `h4` | 32 / 40 px | Russo One | Card titles |
| `h5` | 24 / 32 px | Russo One | Subtitles |
| `body-lg` | 18 / 28 px | Red Hat Display 400 | Lead paragraphs |
| `body` | 16 / 24 px | Red Hat Display 400 | Body text padrão |
| `body-sm` | 14 / 20 px | Red Hat Display 400 | Texto secundário |
| `caption` | 12 / 16 px | Red Hat Display 500 | Captions, legendas |
| `arcade` | 10 / 16 px | Press Start 2P | Eyebrows, tags, badges (LS .22em) |
| `mono` | 12 / 18 px | JetBrains Mono 400 | Specs técnicas |

---

## Letter-spacing tokens

```css
--ls-tight:        -0.02em;   /* Title compactado */
--ls-headline:     -0.01em;   /* Russo One headlines */
--ls-normal:        0;        /* Default */
--ls-wide:          0.06em;   /* Mono nav links */
--ls-arcade:        0.18em;   /* Press Start 2P padrão */
--ls-arcade-loose:  0.22em;   /* Press Start 2P em destaques */
--ls-mono:          0.04em;   /* JetBrains Mono */
```

---

## Pairings recomendados

| Headline | Body | Eyebrow | Quando usar |
|----------|------|---------|-------------|
| Russo One h1 | Red Hat Display body-lg | Press Start 2P arcade | Hero/landing |
| Russo One h2 | Red Hat Display body | Press Start 2P arcade-sm | Section interna |
| Russo One h3 | Red Hat Display body-sm | — | Card title |
| Russo One h4 | JetBrains Mono caption | — | Card de dados/specs |

---

## Anti-patterns

- ❌ Press Start 2P em corpo: cansa olhos, ilegível em > 14px
- ❌ Russo One em minúsculas: perde peso visual
- ❌ Mistura de 3+ display fonts numa peça
- ❌ Letter-spacing 0 em Press Start 2P: as letras encavalam
- ❌ Red Hat Display 100/200: fica fino demais sobre escuro

---

## Como obter (fonts.md)

Veja `fonts.md` na mesma pasta para imports CDN, fallbacks e instruções de carregamento.

---

© 2026 GAMER HUT · Typography Spec v1.0
