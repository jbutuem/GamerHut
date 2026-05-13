# Breakpoints &amp; Grid · GAMER HUT

> Sistema de grade responsivo. 12 colunas no desktop, 6 no tablet, 4 no mobile.

---

## Breakpoints oficiais

| Breakpoint | Range | Colunas | Margem | Gutter |
|-----------|-------|---------|--------|--------|
| **Mobile** | ≤ 520px | 4 | 16px | 12px |
| **Tablet** | 521–1024px | 6 | 32px | 18px |
| **Desktop** | ≥ 1025px | 12 | 80px | 24px |

**Container max-width:** `1280px` (desktop)

---

## Media queries (CSS)

```css
/* Mobile-first approach */

/* Default = Mobile (≤ 520px) */
.container {
  padding: 0 16px;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 12px;
}

/* Tablet (521-1024px) */
@media (min-width: 521px) {
  .container {
    padding: 0 32px;
    grid-template-columns: repeat(6, 1fr);
    gap: 18px;
  }
}

/* Desktop (≥ 1025px) */
@media (min-width: 1025px) {
  .container {
    max-width: 1280px;
    margin: 0 auto;
    padding: 0 80px;
    grid-template-columns: repeat(12, 1fr);
    gap: 24px;
  }
}
```

---

## Spacing scale (múltiplos de 4)

```
04px    tight (ícone+texto)
08px    padding interno mínimo
12px    gutter mobile
16px    padding card / margem mobile
24px    gutter desktop / entre cards
32px    margem tablet / seção interna
48px    entre blocos de conteúdo
64px    padding stage interno
96px    entre stages (ar respirável)
128px   hero / áreas de impacto
```

---

## Baseline grid: 8px

Toda altura de linha, padding vertical, e altura de elemento alinha em **múltiplos de 8**.

Resultado: tipografia que respira, vertical rhythm consistente.

```css
/* ✅ Correto */
.card {
  padding: 24px;        /* múltiplo de 8 */
  margin-bottom: 32px;  /* múltiplo de 8 */
  line-height: 24px;    /* múltiplo de 8 */
}

/* ❌ Errado */
.card {
  padding: 25px;        /* quebra baseline */
  margin-bottom: 30px;  /* quebra baseline */
}
```

---

## Tailwind utility classes

Já configurado no preset `tokens/tailwind.config.js`:

```html
<!-- Mobile, tablet, desktop responsive -->
<div class="grid grid-cols-4 tablet:grid-cols-6 desktop:grid-cols-12 gap-3 tablet:gap-4 desktop:gap-6">
  <div class="col-span-4 tablet:col-span-6 desktop:col-span-12">
    Hero (full width)
  </div>
  <div class="col-span-2 tablet:col-span-3 desktop:col-span-8">
    Conteúdo principal
  </div>
  <div class="col-span-2 tablet:col-span-3 desktop:col-span-4">
    Sidebar
  </div>
</div>
```

---

## Layouts comuns

### Hero (full width)
```html
<section class="col-span-12">
  <h1 class="text-display">Hero</h1>
</section>
```

### Conteúdo + Sidebar
```html
<main class="col-span-8">Conteúdo</main>
<aside class="col-span-4">Sidebar</aside>
```

### Cards triplos
```html
<article class="col-span-4">Card 1</article>
<article class="col-span-4">Card 2</article>
<article class="col-span-4">Card 3</article>
```

### Cards quádruplos
```html
<article class="col-span-3">Card 1</article>
<article class="col-span-3">Card 2</article>
<article class="col-span-3">Card 3</article>
<article class="col-span-3">Card 4</article>
```

---

© 2026 GAMER HUT · Layouts &amp; Grid v1.0
