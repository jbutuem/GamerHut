# Patterns &amp; Texturas · GAMER HUT

> 6 patterns SVG repetíveis, derivados do DNA visual da marca.

---

## Catálogo

| # | Nome | Arquivo | DNA |
|---|------|---------|-----|
| 01 | Controllers Mosaic | `controllers-mosaic.svg` | Controle silhueta repetido (signature) |
| 02 | Scanlines CRT | `scanlines.svg` | Linhas horizontais 1px gap 4px |
| 03 | Pixel Grid | `pixel-grid.svg` | Grade 16×16 |
| 04 | Lifebar Repeat | `lifebar-repeat.svg` | Barras laranjas verticais |
| 05 | Diagonal Stripes | `diagonal-stripes.svg` | Listras 45° (caution) |
| 06 | Konami Dots | `konami-dots.svg` | Círculos espaçados 14px |

---

## Onde usar

### Feed &amp; Stories (Instagram)
- **Pattern 01 + 02:** fundo de Reels e capa de destaques
- ⚠️ Sempre com **overlay escuro 60%** pra texto não competir
- Use opacidade 30-50% pra não dominar

### Embalagem
- **Pattern 03:** sacola laranja, no verso (sutil opacidade 15%)
- **Pattern 04 ou 05:** caixa de envio, nas laterais (opacidade 100%)

### Papelaria
- **Pattern 06:** verso de cartão de visita (escala pequena, opacidade 40%)
- **Pattern 02:** papel timbrado, no rodapé (opacidade 25%)

### Evento &amp; Booth
- **Pattern 05:** banner roll-up de 2m, faixas inferiores (full opacity)
- **Pattern 01:** backdrop de eventos, em mosaico grande (opacidade 60%)

### Web &amp; App
- **Pattern 02:** loading state animado
- **Pattern 03:** empty state (opacidade 8%)
- **Pattern 04:** footer da loja online

---

## Como aplicar (CSS)

### 1. Background-image direto
```css
.hero {
  background-image: url('patterns/scanlines.svg');
  background-repeat: repeat;
}
```

### 2. Como CSS pattern inline (sem arquivo)
```css
/* Scanlines */
.bg-scanlines {
  background: #000;
  background-image: repeating-linear-gradient(
    0deg,
    rgba(242,102,65,.18) 0px,
    rgba(242,102,65,.18) 1px,
    transparent 1px,
    transparent 4px
  );
}

/* Pixel grid */
.bg-pixel-grid {
  background: #000;
  background-image:
    linear-gradient(rgba(242,102,65,.2) 1px, transparent 1px),
    linear-gradient(90deg, rgba(242,102,65,.2) 1px, transparent 1px);
  background-size: 16px 16px;
}
```

Versões CSS-only já estão no `tokens/tailwind.config.js` como `bg-scanlines` e `bg-pixel-grid`.

---

## NÃO USE em:

- ❌ Corpo de texto (atrapalha leitura)
- ❌ Em ícones (perde clareza)
- ❌ Em logos (descaracteriza)
- ❌ Em fundos de produto que precisam respirar
- ❌ Combinação de 2+ patterns na mesma peça
- ❌ Pattern como protagonista — sempre como elemento de apoio

---

## Customização

### Ajustar densidade
Cada pattern é um SVG `<pattern>` editável. Pra mudar a densidade:
- Aumente o `width`/`height` do `<pattern>` → mais espaçamento
- Diminua → mais denso

### Trocar cor
Os patterns usam `#F26641` (Orange Sunset) hardcoded. Pra trocar:
1. Abra o `.svg` em editor de texto
2. Substitua todas as ocorrências de `#F26641` pela nova cor
3. Salve

Ou use `currentColor` em SVGs inline:
```html
<svg style="color: #E1251B"><!-- pattern usa currentColor --></svg>
```

---

© 2026 GAMER HUT · Patterns Spec v1.0
