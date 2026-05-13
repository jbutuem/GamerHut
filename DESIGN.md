# GAMER HUT · Design System

> **Mídia Física Never Dies**
> *Let the games begin.*

Documento de design system oficial da GAMER HUT, varejista brasileira de games. Pra usar com Claude Design (claude.ai/design): faça upload deste arquivo + a pasta de assets, e o Claude extrai tudo automaticamente.

---

## 🎯 Brand Essence

**Quem somos:** Varejista brasileira especializada em mídia física de jogos. Original, lacrado, com nota fiscal. Parceiros oficiais de Nintendo, Sony PlayStation, Microsoft, Capcom, Rockstar, Konami, SEGA, Bandai Namco e Ubisoft.

**Manifesto:** Somos os experts. A GAMER HUT existe por um motivo só — colocar o jogo certo na mão certa. Original, lacrado, com NF.

**Tagline-âncora:** "MÍDIA FÍSICA NEVER DIES"

**O que NÃO somos:** Não vendemos consoles, jogos usados, seminovos, piratas ou qualquer coisa sem procedência oficial.

---

## 🗣 Tom de Voz

Três pilares regem cada caption, legenda, copy de botão e e-mail:

### 1. Acessível
Linguagem clara, moderna, descomplicada. Player com player. Nada de corporativês frio.

### 2. Transparente
Tudo às claras. Procedência, prazo, política. Confiança não se promete, se mostra.

### 3. Instigante
Energia de drop. Tom de evento. Empolgação real, sem urgência fake. Convite, não pressão.

### USE
- "Original, lacrado, com NF"
- "Drop", "Lançamento", "Pré-venda"
- "Bora", "Vem", "Press start"
- "Comunidade", "Player", "Squad", "Hut"
- "Exclusivo", "Raro", "Edição limitada"
- "Garantia da Hut", "Galera que entende"

### NUNCA USE
- ❌ Pirata, réplica, cópia, genérico
- ❌ Console novo, vendemos console
- ❌ Usado, seminovo, troca de jogo
- ❌ "IMPERDÍVEL!!!" (urgência fake com 3 exclamações)
- ❌ Linguagem corporativa fria
- ❌ Promessas que a gente não cumpre
- ❌ "Última unidade!" sem ser verdade

---

## 🎨 Paleta de Cores

Regra de uso: **60-30-10** (60% black, 30% laranja primária, 10% cores de apoio).

### Cores principais

| Nome | Hex | RGB | Pantone | Uso | % |
|------|-----|-----|---------|-----|---|
| **Black Mustache** | `#000000` | rgb(0,0,0) | — | Base, BG, headers, hero | 60% |
| **Orange Sunset** | `#F26641` | rgb(242,102,65) | 7416 C | **PRIMÁRIA** · CTAs, drops, destaques | 30% |
| **Mario Red** | `#E1251B` | rgb(225,37,27) | 485 C | Apoio · alerta, "drop" tag, urgência real | 10% |
| **Fast Skin** | `#FFC27A` | rgb(255,194,122) | 149 C | Apoio · sucesso, premium, calor | 10% |
| **Sonic Blue** | `#194F90` | rgb(25,79,144) | 7686 C | Apoio · trust, info, BGM toggle | 10% |
| **Cool Gray** | `#B1B1B1` | rgb(177,177,177) | — | Texto auxiliar, captions, disabled | UI |

### Cores de suporte

| Nome | Hex | Uso |
|------|-----|-----|
| `--c-jet` | `#0a0a0a` | Card backgrounds em fundo preto |
| `--c-charcoal` | `#1a1a1a` | Hover states em cards |
| `--c-cream` | `#F5F0E8` | Texto sobre fundo escuro (alternativa ao branco) |
| `--c-orange-deep` | `#C94F2F` | Orange escurecido pra sombras/hover |
| `--c-orange-light` | `#FF8866` | Orange claro pra highlights |

### Pares aprovados
- ✅ Black + Orange Sunset (par signature)
- ✅ Black + Cream (texto)
- ✅ Orange Sunset + Black (botões)
- ✅ Black + Sonic Blue (info, BGM)
- ❌ Orange + Mario Red juntos (vibram demais)
- ❌ Fast Skin sobre White (sem contraste)
- ❌ Sonic Blue sobre Black sem outline (some no escuro)

---

## ✍️ Tipografia

Quatro famílias, todas via Google Fonts (gratuitas, web-safe).

### Families

| Família | Função | Pesos | Uso |
|---------|--------|-------|-----|
| **Russo One** | Display | 400 (regular único) | Headlines, capas, manchetes, drops · sempre **CAIXA ALTA** |
| **Red Hat Display** | Body | 300, 400, 500, 700, 800, 900 (+italics) | Corpo de texto, descrições, parágrafos |
| **Press Start 2P** | Arcade | 400 | Tags, eyebrows, badges, navegação · **NUNCA** em corpo |
| **JetBrains Mono** | Monoespaçada | 300, 400, 500, 700 | Specs, EANs, códigos, números de versão |

### Substituição
"Russo One" é a substituta open-source da fonte original "Ichiji ONE-ONE" do manual de identidade. Usa porque é gratuita, web-safe, e tem o mesmo peso visual chunky.

### Hierarquia / Type Scale

| Token | Tamanho | Line-height | Família | Uso |
|-------|---------|-------------|---------|-----|
| `display` | 96px | 96px (1.0) | Russo One | Hero "MÍDIA FÍSICA NEVER DIES" |
| `h1` | 72px | 80px | Russo One | Stage titles |
| `h2` | 56px | 64px | Russo One | Section headers |
| `h3` | 40px | 48px | Russo One | Subsection headers |
| `h4` | 32px | 40px | Russo One | Card titles |
| `h5` | 24px | 32px | Russo One | Subtitles |
| `body-lg` | 18px | 28px | Red Hat Display 400 | Lead paragraphs |
| `body` | 16px | 24px | Red Hat Display 400 | Body text padrão |
| `body-sm` | 14px | 20px | Red Hat Display 400 | Texto secundário |
| `caption` | 12px | 16px | Red Hat Display 500 | Captions, legendas |
| `arcade` | 10px | 16px | Press Start 2P | Eyebrows, tags, badges (letter-spacing .22em) |
| `mono` | 12px | 18px | JetBrains Mono 400 | Specs técnicas |

### Letter-spacing
- Russo One headlines: `-0.01em`
- Press Start 2P arcade: `0.22em` (super espaçado, vibe arcade)
- Red Hat body: `0` (default)
- JetBrains Mono: `0.04em`

---

## 🟧 Logo System

**Lockup oficial:** Símbolo (controle silhueta) + wordmark "GAMER HUT".

### Variações disponíveis (em `/logos/`)

| Arquivo | Versão | Uso |
|---------|--------|-----|
| `logo-vertical-black.svg/.png` | Vertical · preto | Padrão sobre fundo claro |
| `logo-vertical-orange.svg/.png` | Vertical · laranja | Dark mode · drops · heros |
| `logo-vertical-outline-orange.svg` | Vertical · contorno | Watermark · patterns · BG |
| `logo-horizontal-black.svg/.png` | Horizontal · preto | Headers · assinatura email |
| `logo-horizontal-white.png` | Horizontal · branco | HUD · footers escuros |
| `badge-circle-black.svg/.png` | Circle · preto | Avatar · stamps · favicon |
| `badge-circle-orange.svg/.png` | Circle · laranja | Avatar Instagram · pins |

### Regras de uso
- **Margem mínima:** 1× altura da letra "G" do wordmark
- **Tamanho mínimo digital:** 24px de altura
- **Tamanho mínimo impresso:** 12mm de altura
- **Cor sobre fundo claro:** versão preta
- **Cor sobre fundo escuro:** versão branca ou laranja
- **Cor sobre fundo busy:** sempre com fundo de proteção sólido

### NÃO FAÇA
- ❌ Distorcer, rotacionar, esticar
- ❌ Trocar a cor por outras fora da paleta
- ❌ Aplicar gradient ou efeitos no logo
- ❌ Cortar o lockup
- ❌ Usar versão sem texto sozinha em comunicações principais
- ❌ Aplicar sobre imagem busy sem fundo de proteção

---

## 🎮 Iconografia

Sistema próprio de **18 ícones SVG inline** estilo HUD-arcade.

### Specs
- ViewBox: `0 0 24 24` (sempre)
- Stroke: `1.5px`
- Cantos: retos (no rounded)
- Line-cap: `square`
- Cores permitidas: `#fff`, `#F26641`, `#E1251B`, `#B1B1B1` (cool gray)
- Tamanhos padrão: 16, 24, 32, 48 px
- Padrão UI: 24px
- Espaçamento ícone → texto: 8px mínimo

### Categorias

**Comércio:** cart, sacola, caixa, delivery, NF, lacrado
**Gaming:** controle, cartucho, disc, press, start, favorito
**Pessoa:** player, squad
**UI:** drop, lançamento, add, close

Todos os SVGs estão em `/icons/` separados + sprite consolidado em `/icons/icons-sprite.svg`.

---

## 🧱 Grid System & Layout

### Breakpoints

| Breakpoint | Range | Colunas | Margem | Gutter |
|-----------|-------|---------|--------|--------|
| Mobile | ≤ 520px | 4 | 16px | 12px |
| Tablet | 521–1024px | 6 | 32px | 18px |
| Desktop | ≥ 1025px | 12 | 80px | 24px |

**Container max-width:** 1280px

### Spacing Scale
Múltiplos de 4. **Sempre.** Sem números soltos no meio.

```
4    tight · ícone+texto
8    padding interno mínimo · espaçamento ícone-texto
12   gutter mobile · gap pequeno
16   padding card · margem mobile
24   gutter desktop · entre cards
32   margem tablet · seção interna
48   entre blocos de conteúdo
64   padding stage interno
96   entre stages · ar respirável
128  hero · áreas de impacto
```

### Baseline Grid
**8px.** Toda altura de linha, todo padding vertical, toda altura de elemento alinha em múltiplos de 8.

### Border radius
A marca **não usa rounded corners**. Tudo retangular. Exceções:
- Badges circulares (`50%`)
- Lifebar HUD (sem radius)
- Botões e cards: `0` (sem radius)

---

## 🧩 Componentes UI

### Buttons

**Primary** (CTA principal)
- Background: `#F26641` (Orange Sunset)
- Text: `#000` Press Start 2P
- Padding: 16px 22px
- Letter-spacing: 0.22em
- Hover: background → `#fff`, text → `#F26641`

**Ghost** (secundário)
- Background: transparent
- Border: 1px `#F26641`
- Text: `#F26641` Press Start 2P
- Hover: bg `#F26641`, text `#000`

**Danger** (drop urgente)
- Background: `#E1251B` (Mario Red)
- Text: `#fff` Press Start 2P

### Cards
- Background: `#0a0a0a` (jet)
- Border: 1px `rgba(255,255,255,.08)`
- Padding: 24px–32px
- No border-radius
- Hover: border → `#F26641`, transform translateY(-2px)

### Tags / Badges (arcade style)
- Font: Press Start 2P 9–10px
- Padding: 4px 8px
- Letter-spacing: 0.22em
- Variants: orange (default), red (urgent), blue (info), gray (muted)

### Inputs
- Background: `#000`
- Border: 1px `rgba(255,255,255,.2)`
- Focus: border `#F26641`, glow box-shadow
- Font: JetBrains Mono ou Red Hat Display

### Navigation (HUD)
- Background: `rgba(0,0,0,.92)` com backdrop-blur
- Height: 64px
- Position: sticky top
- Logo à esquerda, nav links centro, lifebar+toggles direita
- Lifebar: barra de progresso de scroll laranja

### Lifebar (signature element)
- Height: 4px
- Background: `rgba(242,102,65,.2)`
- Fill: gradient `#F26641 → #C94F2F`
- Animation: pulse 1.4s

---

## 📐 Patterns & Texturas

6 patterns repetíveis em SVG, todos derivados do DNA visual:

1. **Controllers Mosaic** — controle silhueta repetido (signature)
2. **Scanlines CRT** — linhas horizontais 1px com gap 4px
3. **Pixel Grid** — grid 16×16
4. **Lifebar Repeat** — barras laranjas verticais
5. **Diagonal Stripes** — listras 45° estilo "caution"
6. **Konami Dots** — círculos pequenos espaçados

**Onde usar:**
- Feed/Stories: pattern 01 e 02 com overlay escuro 60%
- Embalagem: pattern 03 (sutil), 04 ou 05 (caixas)
- Papelaria: pattern 06 verso de cartão
- Banner/booth: pattern 05 nas faixas inferiores
- Web/App: pattern 02 em loading states

**NÃO usar:** em corpo de texto, em ícones, em logos, em fundos de produto.

---

## 📱 Aplicações

Veja `/examples/` pra HTMLs reais de:
- Landing page (`landing-page.html`)
- Feed Instagram 3×3 (`feed-3x3.html`)
- Página de produto (no `brandbook/index.html`)
- Mockups físicos (cartão, camiseta, sacola, banner, etiqueta, crachá no `brandbook/`)

---

## 🤝 Co-branding com Squad

Como aplicar com publishers parceiros (Nintendo, Sony, Xbox, Capcom, Rockstar, Konami, SEGA, Bandai, Ubisoft):

**Lockup horizontal:** Nossa marca à esquerda (laranja, primária), separator vertical 1px com 32px de respiro de cada lado, marca do parceiro à direita em peso visual igual.

**Regras:**
- Espaço mínimo entre marcas: 32px
- Altura do separator: = altura da letra "G" do nosso logo
- Cor do separator: `rgba(255,255,255,.2)`
- Peso visual: igual entre as duas marcas (nunca diminuir o parceiro)

**NÃO faça:** logos fundidos, símbolos compostos, versões "co-marca" do nosso logo.

---

## 🎵 Identidade Sonora (opcional, para web)

O brandbook tem audio engine 8-bit chiptune sintetizado em Web Audio API:
- Coin sound em links de navegação
- Press Start fanfarra em CTAs principais
- BGM loop chiptune em A minor (lead square + bass triangle)
- Toggles na HUD: ♪ ON/OFF (SFX) + ♫ BGM

Para implementação digital, o pack inclui o engine completo no `brandbook/index.html`.

---

## 📦 Pilares de Conteúdo (para social)

5 categorias editoriais que regem o feed:

| Pilar | % do feed | Cadência | Cor de tag |
|-------|-----------|----------|------------|
| **Drop & Lançamento** | 35% | 3-4×/sem (qui-sex) | Orange Sunset |
| **Review do Squad** | 20% | 1×/sem (terça 19h) | Sonic Blue |
| **Tip da Hut** | 20% | 2×/sem (seg+qua 10h) | Fast Skin |
| **Lore & Curiosidade** | 15% | 1×/sem (domingo 20h) | Mario Red |
| **Resumo da Semana** | 10% | 1×/sem (sábado 9h) | Cool Gray |

---

## ✅ Checklist final pra Claude Design

Quando usar este pack:
1. ✅ Faça upload de **DESIGN.md** primeiro (este arquivo)
2. ✅ Depois faça upload da pasta inteira do pack (ou os subfolders relevantes)
3. ✅ Mencione: "Use o brand system Gamer Hut do DESIGN.md"
4. ✅ Pra prompts específicos, sempre referencie tokens nomeados ("use Orange Sunset", "use Russo One headline")
5. ✅ Para projetos com publishers, mencione co-branding rules

---

© 2026 GAMER HUT · Brandbook v.2026.05 · Design System pack v1.0
Powered by TGT Strategy MKT — *A Agência Além do Marketing*
