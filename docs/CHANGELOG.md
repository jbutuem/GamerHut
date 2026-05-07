# Changelog

Todas as mudanças relevantes deste brandbook são documentadas neste arquivo.

Formato baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/), versionamento segue o padrão `vYYYY.MM` (release mensal).

---

## [v2026.06] — 2026-05-07 (refinamentos · logos reais · mobile fix)

Release de **polimento** focada em corrigir issues levantados após a v2026.05: logos reais nas aplicações físicas, correção de overflow em mobile, refinamento do feed Instagram, e validação completa do áudio.

### 🟧 Stage 19 · Aplicações Físicas — LOGOS REAIS
Substituídos todos os textos placeholder pelos SVGs oficiais da marca:

| Peça | Antes | Agora |
|------|-------|-------|
| Cartão de visita | Círculo laranja com texto "GH" | `badge-circle-orange.svg` (38px) |
| Camiseta | Texto vertical "MÍDIA FÍSICA NEVER DIES" | `logo-vertical-outline-orange.svg` (80px) + slogan abaixo |
| Sacola | Texto "GAMER HUT" | `logo-vertical-black.svg` (84px) sobre fundo laranja |
| Banner Roll-up | Texto sem logo | `logo-vertical-orange.svg` (54px) topo + headline embaixo |
| Etiqueta de Envio | Texto "GAMER HUT" | `logo-horizontal-black.svg` (18px) no header |
| Crachá de Evento | Texto "SQUAD" sem logo | `badge-circle-orange.svg` (42px) topo + nome SQUAD embaixo |

### 📱 Mobile (iPhone) — overflow fixes
- **Body sem overflow horizontal** em viewports de 375px (iPhone SE) e 390px (iPhone 14)
- **Stage 01 Manifesto**: stats de 3 cols → 1 col em viewports ≤520px
- **Stage 04 Pilares**: títulos longos com `word-break:break-word` + `hyphens:auto` (TRANSPARÊN-CIA, OPORTUNIDA-DES)
- **Stage 06 Usos do Logo**: lista FAÇA/NÃO FAÇA empilha em 1 col, badges renomeados para evitar conflito CSS
- **Stage 17 Feed Instagram**: 
  - `@GAMERHUT.STORE` quebra em duas linhas em vez de cortar
  - `.gm-tile` ganha `padding-bottom:32px` pra labels não colidirem com texto central
  - `.ig-tile .price` reduzido pra 10px no mobile, `small` pra 6px
- **Stage 20 E-commerce**: shop-bar empilha logo + busca/conta + nav (com scroll horizontal); grid de produtos vira 2 cols em ≤520px
- **Conflito CSS resolvido**: classe `.badge` (180px) do crachá renomeada para `.lanyard-badge` (causava badges vazando 12px em outros stages)
- Adicionado `word-break:break-word` global no `.stage-title` pra evitar textos cortados em qualquer stage

### 🎵 Áudio — validado funcionando
- AudioContext: state `running` · sampleRate 44.1kHz · 2 canais
- BGM toggle persiste em `localStorage` (`gh_brandbook_bgm`)
- Botão `.on` recebe pulse animation
- Volume baixo proposital (`masterGain = 0.12`) — discreto por design
- Áudio só inicia após primeira interação (PRESS START da senha) — autoplay policy do browser

### 🛠 Outros
- Versão da senha bumpada para `gh_brandbook_unlocked_v2026.06` (senha será pedida de novo nesta release)
- HUD `v.2026.06`
- Validação automatizada de overflow horizontal incluída no QA (Playwright + iPhone SE 375px)

### 📊 Stats
- **6310 linhas** (era 6262) · **308 KB** · 100 arquivos no repo

---

## [v2026.05] — 2026-05-07 (artwork &amp; identidade visual)

Release focada em **enriquecimento da identidade visual**. Brandbook cresce de 17 para **22 stages**, com 5 novos capítulos cobrindo o que faltava de projeto gráfico.

### ✨ Novo · Stages
- **Stage 07 · Grid &amp; Layout System** — diagrama de 12 colunas no desktop com colunas COL-12/8/6/4/3, breakpoints (mobile 4col/tablet 6col/desktop 12col com bars escalonadas), spacing scale completa (4·8·12·16·24·32·48·64·96·128) com barras visuais e uso recomendado, e baseline grid 8px com linhas guia laranjas demonstrando vertical rhythm.
- **Stage 10 · Iconografia** — sistema próprio de **18 ícones SVG inline** em estilo HUD-arcade (cart, sacola, caixa, delivery, NF, lacrado, controle, cartucho, disc, press, start, favorito, drop, lançamento, player, squad, add, close), agrupados em 4 categorias (Comércio, Gaming, Pessoa, UI). Inclui regras de tamanhos (16/24/32/48px), proporção (viewBox 24×24, stroke 1.5px, cantos retos), cores permitidas (branco/orange/red/cool gray) e espaçamento mínimo (8px).
- **Stage 12 · Patterns &amp; Texturas** — 6 patterns CSS repetíveis: Controle Isométrico (signature), Scanlines CRT, Pixel Grid, Lifebar Repeat, Diagonal Stripes (caution), Konami Dots. Acompanha grid de usos (Feed, Embalagem, Papelaria, Evento, Web, e o "NÃO USAR").
- **Stage 14 · Co-branding com Squad** — lockup horizontal padrão (GAMER HUT | NINTENDO) com regras de espaçamento (32px mínimo entre marcas, separator 1px com altura = letra "G" do nosso logo, cor `rgba(255,255,255,.2)`). Grid 3×3 com cada um dos 9 publishers do squad pareado com nossa marca + contexto de uso. 3 cards "✗ NÃO FAÇA".
- **Stage 19 · Aplicações Físicas** — 6 mockups CSS puro: cartão de visita (rotacionado, glow laranja), camiseta (clip-path da forma), sacola laranja com alças, banner roll-up vertical com tripé, etiqueta de envio com barcode e perfuração picotada, crachá de evento com lanyard. Card final "▸ O QUE VEM A SEGUIR" lista próximas entregas possíveis (papel timbrado, envelope, assinatura email, adesivos, embalagem de presente, signage, skin de console, filtros AR, stickers WhatsApp, apresentação institucional).

### 🎵 Novo · Música ambiente
- **BGM loop chiptune** — melodia original em A minor (16 notas lead em square wave + 8 notas bass em triangle wave), step de 200ms, loop ~3.2s. Volume sutil (0.06 lead, 0.12 bass) para não competir com o conteúdo.
- **Botão `♫ BGM` separado** na HUD ao lado do `♪ ON`, em **azul Sonic** com pulse animation quando ativa. Persiste preferência em `localStorage` (`gh_brandbook_bgm`).

### 🛠 Estrutural
- Sumário (TOC) atualizado para listar todos os 22 stages com novos descriptions.
- Stages 13–17 da v2026.04 foram **renumerados** para acomodar os novos: Squad 10→13, Voz em Ação 11→15, Pilares de Conteúdo 12→16, Feed 13→17, Posts 14→18, E-commerce 15→20, Tips 16→21, Game Over 17→22.
- Footer agora exibe `STAGE 22/22 · GAME OVER`.
- HUD atualizada para `v.2026.05`.
- `STORAGE_KEY` da senha versionada (`gh_brandbook_unlocked_v2026.05`) — senha será pedida de novo nesta release.

### 📊 Stats
- **6262 linhas** (era 4619) · **308 KB** (era 252 KB) · **94 arquivos** no repo

---

## [v2026.04] — 2026-05-06 (audio update)

### ✨ Novo
- **Som 8-bit chiptune** — Sintetizado em tempo real com Web Audio API, sem arquivos externos. Toca em pontos específicos:
  - 🪙 **Coin** (Mario-style) — ao clicar em links de navegação âncora
  - ▶ **Press Start** (fanfarra C5→E5→G5→C6) — quando a senha é aceita
  - ✗ **Buzz grave** — quando a senha falha
  - 🌀 **Portal sweep** (220→880Hz) — quando o easter egg do Staff Roll abre
  - 🎺 **Konami fanfare** (E5-E5-E5-C5-E5-G5-G4) — quando o código é completado
  - 🔔 **Stage bleep** — sutil, quando o scroll-spy detecta mudança de stage
  - 💡 **Hover blip** — em CTAs principais (com throttle pra não cascatear)
- **Botão de toggle áudio na HUD** (♪ ON / ♪ OFF) com persistência em `localStorage`. Quem prefere brandbook silencioso muta uma vez e pronto. Toggle visual: laranja quando ON, cinza com strikethrough vermelho quando OFF.
- **Versionamento de sessão** — `STORAGE_KEY` da senha agora inclui versão. Quando subimos pra 2026.04, a senha é pedida de novo (era 2026.03).

### 🛠 Notas técnicas
- Áudio só inicializa após **primeira interação** do usuário (autoplay policy dos browsers). O `PRESS START` da senha é o gatilho perfeito.
- Volume master fixo em 12% — sutil, não invasivo.
- Engine usa apenas `OscillatorNode` com forma `square` (a cara do NES). Zero dependência, zero arquivos.
- Hover blips com throttle de 200ms para evitar dispara em cascata quando o mouse passa rápido.

### 📊 Stats
- **4619 linhas** (era 4390) · **252 KB** (era 244 KB) — aumento devido ao audio engine

---

## [v2026.03] — 2026-05-06 (patch)

### ✨ Novo
- **Lock screen com senha** — Tela de acesso restrito antes do brandbook. Senha definida no JS (constante `PASSWORD` em `index.html`). Estilo arcade com input "ENTER PASSWORD", botão "PRESS START", watermark "GAMER HUT" gigante no fundo, mensagem de erro "ACCESS DENIED · TRY AGAIN" e persistência por sessão (`sessionStorage`). ⚠️ **Não é segurança real** (verificação client-side, qualquer um pode ver no source) — é deterrent contra acesso casual quando o link é compartilhado por engano.
- **Logo TGT bombástico** no easter egg — Frame agora 50% maior, com halo radial vermelho atrás, glow neon pulsante ao redor do logo, tagline destacada "A AGÊNCIA **ALÉM** DO MARKETING" com fade-in suave, cantos com marca em vermelho mais forte e box-shadow externa criando halo neon vermelho.

### 🐛 Corrigido
- **Logo do HUD top-left agora carrega sempre** — Estava aparecendo como ícone broken image em alguns ambientes (file://, navegadores com policy restritiva, primeiro carregamento). Agora é embebido como base64 inline no próprio HTML, garantindo carregamento mesmo offline ou em situações adversas.

### 📊 Stats
- **4390 linhas** (era 4019) · **244 KB** (era 136 KB — aumento devido ao base64 do logo)

---

## [v2026.02] — 2026-05-06

### ✨ Novo
- **Stage 12 · Pilares de Conteúdo** — 5 categorias editoriais (Drop & Lançamento, Review do Squad, Tip da Hut, Resumo da Semana, Lore & Curiosidade), cada uma com formato sugerido, ritmo, CTA e tags de cor. Inclui gráfico de distribuição percentual (35/20/20/15/10) e tabela de cadência semanal.
- **Sistema Modular · 6 Peças** dentro do Stage 13 (Feed) — apresenta os 6 tipos de tile que se combinam pra formar qualquer post: Key Art, Brand Orange, Logo Dark, Press Arcade, Quote Manifesto e Tip Content.
- **Easter Egg TGT** — tela de Staff Roll estilo créditos finais de jogo arcade, com scanlines CRT, fade-in e scroll automático de ~42s. Acionável por Konami code, digitando `T·G·T` no teclado, ou clicando 3× no badge laranja "▸ ESTE BRANDBOOK É VIVO" no rodapé.
- **Assets TGT** em `assets/tgt/` — logo da agência (versões dark, light, symbol e SVG).

### 🛠 Melhorado
- Brandbook agora tem **17 stages** (era 16). Stages 13-17 foram renumerados.
- Versão atualizada na HUD e no footer (v.2026.02).
- Hint discreto no rodapé apontando os triggers do easter egg.

### 🐛 Corrigido
- Grid Modular em viewports < 520px (mobile pequeno) agora usa 2 colunas em vez de 3, com fontes ajustadas e labels recolocadas — sem mais overlap de texto.
- Staff Roll em mobile: tag "SECRET STAGE" e botão "CONTINUE [ESC]" não se sobrepõem mais. Texto de créditos não vaza horizontalmente.

### 📊 Stats
- **4019 linhas** (era 3083) · **136 KB** (era 110 KB)
- **59 arquivos** no ZIP (era 54)
- 21 assets locais referenciados no HTML

---

## [v2026.01] — 2026-01-06

### ✨ Novo (versão inicial)
- 16 stages cobrindo: Manifesto, Essência, Tom de Voz, Pilares, Logo System (6 variações oficiais), Usos do Logo, Paleta (Regra 60-30-10), Tipografia (4 famílias), Grafismos, Squad (9 publishers), Voz em Ação, Feed Instagram, Posts, E-commerce, Cheat Sheet, Game Over.
- HUD nav fixa com lifebar pulsante e scroll-spy.
- Hero "MÍDIA FÍSICA NEVER DIES" com controle silhueta no fundo.
- Mockup completo do feed `@gamerhut.store` (grid 3×3).
- 6 modelos de posts (drop, pré-venda, story, multi-plataforma, clássico, exclusivo).
- E-commerce mock com 8 produtos.
- Cheat sheet de copy pronto para usar.
- Konami code easter egg.
- Logo system com 6 variações oficiais (vertical preto/laranja/branco, horizontal preto/branco, badge circular preto/laranja, outline orange).
- 12 jogos com key art em 3 tamanhos cada (large 1600w, sq 1080×1080, thumb 600×600).
- Mobile responsivo (testado em 390×844 e 375×667).

---

## Tipos de mudança usados

- **✨ Novo** — funcionalidade ou conteúdo adicionado
- **🛠 Melhorado** — refinamento de algo que já existia
- **🐛 Corrigido** — bug fix
- **🗑 Removido** — algo que saiu
- **🔒 Segurança** — issues de segurança
- **📊 Stats** — métricas e tamanhos
