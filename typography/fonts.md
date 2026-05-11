# Fontes · Como carregar

Todas as 4 famílias da GAMER HUT estão disponíveis no **Google Fonts** (gratuitas, sem licença comercial restrita).

---

## ⚡ Quick start: 1 linha CDN

Cole no `<head>` do seu HTML:

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Russo+One&family=Red+Hat+Display:wght@300;400;500;700;800;900&family=Press+Start+2P&family=JetBrains+Mono:wght@300;400;500;700&display=swap" rel="stylesheet">
```

---

## CSS @import (para projetos que não usam HTML)

```css
@import url('https://fonts.googleapis.com/css2?family=Russo+One&family=Red+Hat+Display:wght@300;400;500;700;800;900&family=Press+Start+2P&family=JetBrains+Mono:wght@300;400;500;700&display=swap');
```

---

## Imports separados (caso queira controlar)

### Russo One (Display)
```html
<link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
```

### Red Hat Display (Body)
```html
<link href="https://fonts.googleapis.com/css2?family=Red+Hat+Display:wght@300;400;500;700;800;900&display=swap" rel="stylesheet">
```

### Press Start 2P (Arcade)
```html
<link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
```

### JetBrains Mono (Técnica)
```html
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@300;400;500;700&display=swap" rel="stylesheet">
```

---

## Self-hosting (opcional, mais performance)

Pra performance máxima, você pode hospedar as fontes no próprio servidor:

1. Baixar do Google Fonts (botão "Download family" na página de cada fonte)
2. Converter pra `.woff2` (formato moderno, mais leve)
3. Definir `@font-face` no CSS:

```css
@font-face {
  font-family: 'Russo One';
  src: url('/fonts/RussoOne-Regular.woff2') format('woff2');
  font-weight: 400;
  font-style: normal;
  font-display: swap;
}
/* ... repetir pra cada peso/família ... */
```

---

## Tailwind config

Já incluso no preset `tokens/tailwind.config.js`:

```js
fontFamily: {
  'display': ['"Russo One"', 'Impact', 'sans-serif'],
  'body':    ['"Red Hat Display"', 'system-ui', 'sans-serif'],
  'arcade':  ['"Press Start 2P"', 'monospace'],
  'mono':    ['"JetBrains Mono"', 'monospace'],
},
```

Use no JSX/HTML:
```html
<h1 class="font-display text-h1">MÍDIA FÍSICA</h1>
<p class="font-body text-body">Original, lacrado, com NF.</p>
<span class="font-arcade text-arcade">▶ DROP</span>
```

---

## CSS custom properties

Já incluso em `tokens/colors.css`:

```css
--f-display: 'Russo One', Impact, sans-serif;
--f-body:    'Red Hat Display', system-ui, sans-serif;
--f-arcade:  'Press Start 2P', monospace;
--f-mono:    'JetBrains Mono', monospace;
```

---

## Licenças

| Família | Licença | Uso comercial? |
|---------|---------|----------------|
| Russo One | SIL Open Font License 1.1 | ✅ Sim, sem restrição |
| Red Hat Display | SIL Open Font License 1.1 | ✅ Sim, sem restrição |
| Press Start 2P | SIL Open Font License 1.1 | ✅ Sim, sem restrição |
| JetBrains Mono | SIL Open Font License 1.1 | ✅ Sim, sem restrição |

Todas as 4 fontes são livres pra uso comercial, modificação e distribuição.

---

© 2026 GAMER HUT · Fonts Reference v1.0
